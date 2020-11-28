unit uLibrary;

interface
uses
  System.SysUtils,Vcl.Forms, System.Classes, frxClass,IniFiles,System.UITypes,
  Windows,Dialogs,Vcl.StdCtrls,System.Variants,Vcl.Mask,Vcl.Controls,Vcl.CheckLst,
  Data.SqlExpr, Vcl.DBGrids, Datasnap.DBClient;

  procedure GeraRelatorio(const pReport: TfrxReport);
  procedure CriarForm(T: TFormClass; F: TForm);
  procedure LimpaCampos();
  procedure Lst(SQLList : String; SQLQuery : TSQLQuery;Rel : TfrxReport; DtIni,DtEnd : String);

  function GetVersion(sFileName:string): string;
  function VerificaInativo(INV : Boolean): string;
  function TipoConta( Tipo : Integer ) : String;
  function VerificaTipo(Tipo : Integer ; Valor : String) : string;
  function Remove(str: string):string;

implementation

procedure GeraRelatorio(const pReport: TfrxReport);
begin
  pReport.PrepareReport();
  pReport.ShowPreparedReport;
end;

procedure CriarForm(T: TFormClass; F: TForm);
begin
  try
    Application.CreateForm(T,F);
    F.ShowModal;
  finally
    F.Free
  end;
end;

procedure LimpaCampos();
var i:Integer;
begin
  with Screen.ActiveForm do begin
    for i := 0 to ComponentCount -1 do begin
      //Limpar Edtis
      if Components[i] is TEdit then
        TEdit(Components[i]).Clear;
       //Limpar MaskEdtis
      if Components[i] is TMaskEdit then
        TMaskEdit(Components[i]).Clear;
      // Limpa Memo
      if Components[i] is TMemo then
        TMemo(Components[i]).Clear;
      if Components[i] is TComboBox then
        TComboBox(Components[i]).Clear;
    end;
  end;
end;

// Grava no componete SQlQuery e da o refresh no compomtes  TClientDataSet
procedure Lst(SQLList : String; SQLQuery : TSQLQuery;Rel : TfrxReport; DtIni,DtEnd : String);
begin
  with SQLQuery do begin
    Close;
    SQL.Clear;
    SQL.Add(SQLList);
    // Veririca se o SQL passado tem os parames de Data Inicio e Fim
    if (DtIni <> EmptyStr) or (DtEnd <> EmptyStr) then begin
      ParamByName('DTINI').Value := StrToDate(DtIni);
      ParamByName('DTEND').Value := StrToDate(DtEnd);
      Rel.Variables['DTINI'] := StrToDate(DtIni);
      Rel.Variables['DTEND'] := StrToDate(DtEnd);
    end;
    ExecSQL();
  end;
end;

// Retorno S ou N se tive marcado o CheckBox
function VerificaInativo(INV : Boolean): string;
begin
  if INV then
    Result := 'S'
  else
    Result := 'N'
end;

// Retorna se é R, D ou N de acordo com o RadioGroup marcado
function TipoConta( Tipo : Integer ) : String;
begin
  if Tipo < 0 then
    raise Exception.Create(' Selecione um tipo de Conta ')
  else if Tipo = 0 then
    Result := 'R'
  else if Tipo = 1 then
    Result := 'D'
  else if Tipo = 2 then
    Result := 'N'
  else
    Result := '';
end;

function GetVersion(sFileName: string): string;
var
  VerInfoSize  : DWORD;
  VerInfo      : Pointer;
  VerValueSize : DWORD;
  VerValue     : PVSFixedFileInfo;
  Dummy        : DWORD;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(sFileName), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(sFileName), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
    with VerValue^ do
    begin
      Result := IntToStr(dwFileVersionMS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
      Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
      Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
    end;
    FreeMem(VerInfo, VerInfoSize);
  except //se ocorrer um erro retorna a versão 1.0.0.0, vai ocoorer um erro se o arquivo não tiver versão
    Result:='1.0.0.0';
 end;
end;

function VerificaTipo(Tipo : Integer ; Valor : String) : string;
begin
  if Tipo < 0 then
    raise Exception.Create(' Seleciona um tipo de conta ')
  else if Tipo = 0 then
    Result :=  Valor
  else
    Result := '-'+Valor;
end;

function Remove(str: string):string;
var
   x: integer;
   st: string;
begin
st:='';
for x:=1 to length(str) do
    begin
    if (str[x] <> '-')
//       (str[x] <> '.') and
//     (str[x] <> ',') and
//      (str[x] <> '/')
    then
    st:=st + str[x];
    end;
Remove:=st;
end;

end.
