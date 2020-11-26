unit uLibrary;

interface
uses
  System.SysUtils,Vcl.Forms, System.Classes, frxClass,IniFiles,System.UITypes,
  Windows,Dialogs,Vcl.StdCtrls,System.Variants,Vcl.Mask,Vcl.Controls,Vcl.CheckLst,
  Data.SqlExpr, Vcl.DBGrids, Datasnap.DBClient;

  procedure GeraRelatorio(const pReport: TfrxReport);
  procedure CriarForm(T: TFormClass; F: TForm);
  procedure LimpaCampos();
  procedure Lst(SQLList : String; SQLQuery : TSQLQuery; Cds : TClientDataSet;DtIni,DtEnd : String);

  function VerificaInativo(INV : Boolean): string;
  function TipoConta( Tipo : Integer ) : String;


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
    end;
  end;
end;

// Grava no componete SQlQuery e da o refresh no compomtes  TClientDataSet
procedure Lst(SQLList : String; SQLQuery : TSQLQuery; Cds : TClientDataSet; DtIni,DtEnd : String);
begin
  with SQLQuery do begin
    Close;
    SQL.Clear;
    SQL.Add(SQLList);
    // Veririca se o SQL passado tem os parames de Data Inicio e Fim
    if (DtIni <> EmptyStr) or (DtEnd <> EmptyStr) then begin
      ParamByName('DTINI').Value := StrToDate(DtIni);
      ParamByName('DTEND').Value := StrToDate(DtEnd);
    end;
    ExecSQL();
  end;
  Cds.Active := True;
  // Dar o refresh no ClientDataSet
  Cds.Refresh;
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
  else
    Result := 'N';
end;

end.
