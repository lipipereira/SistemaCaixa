unit uLibrary;

interface
uses
  System.SysUtils,Vcl.Forms, System.Classes, frxClass,IniFiles,System.UITypes,
  Windows,Dialogs,Vcl.StdCtrls,System.Variants,Vcl.Mask,Vcl.Controls,Vcl.CheckLst,
  Data.SqlExpr, Vcl.DBGrids, Datasnap.DBClient;

 // procedure GeraRelatorio(const pReport: TfrxReport);
  procedure CriarForm(T: TFormClass; F: TForm);
  procedure LimpaCampos();
  //procedure Lst(SQLList : String; SQLQuery : TSQLQuery; Cds : TClientDataSet;DtIni,DtEnd : String);

  {function GetVersion(sFileName:string): string;
  function Ret_Numero(Key: Char; Texto: string; EhDecimal: Boolean = False): Char; }
  function VerificaInativo(INV : Boolean): string;
 { function VerificaTipo(Tipo : Integer; Valor : String) : string;  }
  function TipoConta( Tipo : Integer; Nome : Boolean ) : String;


implementation
  {
procedure GeraRelatorio(const pReport: TfrxReport);
begin
  pReport.PrepareReport();
  pReport.ShowPreparedReport;
end;
   }
procedure CriarForm(T: TFormClass; F: TForm);
begin
  try
    Application.CreateForm(T,F);
    F.ShowModal;
  finally
    F.Free
  end;
end;
  {
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
  except //se ocorrer um erro retorna a vers�o 1.0.0.0, vai ocoorer um erro se o arquivo n�o tiver vers�o
    Result:='1.0.0.0';
 end;
end;
  }
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
    end;
  end;
end;
     {
procedure Lst(SQLList : String; SQLQuery : TSQLQuery; Cds : TClientDataSet; DtIni,DtEnd : String);
begin
  with SQLQuery do begin
    Close;
    SQL.Clear;
    SQL.Add(SQLList);
    if (DtIni <> EmptyStr) or (DtEnd <> EmptyStr) then begin
      ParamByName('DTINI').Value := StrToDate(DtIni);
      ParamByName('DTEND').Value := StrToDate(DtEnd);
    end;
    ExecSQL();
  end;
  Cds.Active := True;
  Cds.Refresh;
end;

function  Ret_Numero(Key: Char; Texto: string; EhDecimal: Boolean = False): Char;
begin
  if not EhDecimal then begin
    { Chr(8) = Back Space }             {
    if not (CharInSet(Key,['0'..'9',#8])) then
      Key := #0
  end;
  Result := Key;
end;
}
function VerificaInativo(INV : Boolean): string;
begin
  if INV then
    Result := 'S'
  else
    Result := 'N'
end;
   {
function VerificaTipo(Tipo : Integer ; Valor : String) : string;
begin
  if Tipo < 0 then
    raise Exception.Create(' Seleciona um tipo de movimento ')
  else if Tipo = 0 then
    Result :=  Valor
  else
    Result := '-'+Valor;
end;
 }
function TipoConta( Tipo : Integer ; Nome : Boolean ) : String;
begin
  if Tipo < 0 then
    raise Exception.Create(' Seleciona um tipo de movimento ')
  else if (Tipo = 0) and (Nome) then
    Result := 'Receita'
  else if ( Tipo = 1 ) and (Nome) then
    Result := 'Despesa'
  else if Tipo = 0 then
    Result := 'R'
  else if Tipo = 1 then
    Result := 'D'
  else
    Result := 'N';

end;

end.
