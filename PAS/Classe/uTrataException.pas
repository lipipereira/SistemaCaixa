unit uTrataException;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, AppEvnts;

type
  TException = class
  private
  LogFile : String;
  public
    constructor Create;
    procedure TrataExc(Sender : TObject; E:Exception);
    procedure GravaLog(Value : String);
  end;

implementation

{ TException }

constructor TException.Create;
begin
  LogFile:=ChangeFileExt('LogErro','.log');
  Application.OnException:= TrataExc;
end;

procedure TException.GravaLog(Value: String);
var
  txtLog : TextFile;
begin
  AssignFile(txtLog,LogFile);
  if FileExists(LogFile) then
   // escreve no arequivo se ele existi
    Append(txtLog)
  else
  // rescreve erro
    Rewrite(txtLog);
  try
    // Escreve o Erro e a data e a hora do Erro
    Writeln(txtLog, FormatDateTime('dd/mm/YY hh:mm:ss - ',Now) + Value);
  finally
  // Fecha arquivo
    CloseFile(txtLog);
  end;
end;

procedure TException.TrataExc(Sender: TObject; E: Exception);
begin

if TComponent(Sender) is TForm then
begin
  GravaLog('============================================');
  GravaLog('Form: '+TForm(Sender).Name);
  GravaLog('Caption: '+TForm(Sender).Caption);
  GravaLog('Erro: '+E.ClassName);
  GravaLog('Erro: '+E.Message);
end
else
begin
  GravaLog('Form: ' + TForm(TComponent(Sender).Owner).Name);
  GravaLog('Caption: ' + TForm(TComponent(Sender).Owner).Caption);
  GravaLog('Erro: ' + E.ClassName);
  GravaLog('Erro: ' + E.Message);
end;
ShowMessage(E.Message);
end;

var
  TesteExcept : TException;
initialization
  TesteExcept := TException.Create;
Finalization
  TesteExcept.Free;

end.

