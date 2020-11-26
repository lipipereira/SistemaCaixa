unit uClasseRelatorio;

interface

uses
  Data.SqlExpr, Data.DB,System.classes;

Type
  TRelatorio = Class
  private

  public

    function SQLCaixa ( Data,Gru : Boolean;Grupo, Conta : String ): String;

end;

implementation

uses
  System.SysUtils, uClasseSQL;

{ TRelatorio }

// Monta o sql com os filtro do Relatorio
function TRelatorio.SQLCaixa( Data,Gru : Boolean; Grupo, Conta : String ): String;
var
 Dt, grup, con : String;
begin
  if Data then
    Dt := ' where mov.dtope between :DTINI and :DTEND ';
  if Grupo <> EmptyStr then
    grup := ' and gru.cdgru = '+Grupo;
  if Conta <> EmptyStr then
    con := ' and con.cdcon = '+Conta;
  // Verifica se o Relatorio vai ser por conta ou por Grupo
  if Gru then
    Result := SQL_RelatorioGrupo + Dt + grup
  else
    Result := SQL_RelatorioConta + Dt + con;

end;

end.
