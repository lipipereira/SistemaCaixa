unit uClasseRelatorio;

interface

uses
  Data.SqlExpr, Data.DB,System.classes;

Type
  TRelatorio = Class
  private

  public

    function SQLCaixa ( Gru, Neutro : Boolean;Grupo, Conta : String ): String;
    function SQLCaixaTotalizador( Gru, Neutro : Boolean; Grupo, Conta : String ): String;


end;

implementation

uses
  System.SysUtils;

{ TRelatorio }

// Monta o sql com os filtro do Relatorio
function TRelatorio.SQLCaixa( Gru, Neutro : Boolean; Grupo, Conta : String ): String;
var
 Dt, grup, grup2, con, neu : String;
begin
  Dt := ' and b.dtope between :DTINI and :DTEND ';
  if Grupo <> EmptyStr then begin
    grup := ' and g.cdgru = ' + Grupo;
    grup2 := ' and c.cdgru = ' + Grupo;
  end;
  if Conta <> EmptyStr then begin
    con := ' and c.cdcon = ' + Conta ;
  end;
  if not Neutro then begin
    neu := ' and c.tpcon <> ''N'' ';
  end;

  // Verifica se o Relatorio vai ser por conta ou por Grupo
  if Gru then
    Result :=  ' select g.nmgru, ' +
               ' (sum( case when con.tpcon = ''R'' then mov.valor else 0.00 end) ) as entrada, ' +
               ' (sum( case when con.tpcon = ''D'' then mov.valor else 0.00 end) ) as saida, ' +
               ' (sum( case when con.tpcon = ''N'' then mov.valor else 0.00 end) ) as neutro, ' +
               ' sum ( mov.valor ) as saldo ' +
               ' from fimov mov ' +
               ' inner join ficon con on con.cdcon = mov.cdcon ' +
               ' inner join figru g on g.cdgru = con.cdgru ' +
               ' where mov.dtope between :DTINI and :DTEND ' + grup +
               ' group by g.nmgru '
  else
    Result := ' select c.nmcon,b.dtope,b.descri, ' +
              ' (case when c.tpcon = ''R'' then b.valor else 0.00 end ) as entrada, ' +
              ' (case when c.tpcon = ''D'' then b.valor else 0.00 end ) as saida, ' +
              ' (case when c.tpcon = ''N'' then b.valor else 0.00 end ) as Neutro, ' +
              ' sum(a.valor) as Saldo ' +
              ' from fimov a,fimov b ' +
              ' inner join ficon c on c.cdcon = b.cdcon ' +
              ' inner join figru g on g.cdgru = c.cdgru ' +
              ' where a.cdmov <= b.cdmov ' + Dt + neu + con + grup +
              ' and a.cdcon in ( select cdcon from ficon c where a.dtope between :DTINI and :DTEND ' +
                grup2 + neu + con +' )' +
              ' group by b.cdmov,entrada,saida,c.nmcon,b.dtope,b.descri,Neutro ' +
              ' order by b.cdmov,b.dtope asc';

end;

function TRelatorio.SQLCaixaTotalizador(Gru, Neutro: Boolean; Grupo,
  Conta: String): String;
var
 Dt, grup, con, neu : String;
begin
  Dt := ' a.dtope between :DTINI and :DTEND ';
  if Grupo <> EmptyStr then
    grup := ' and g.cdgru = ' + Grupo;
  if Conta <> EmptyStr then
    con := ' and a.cdcon = ' + Conta;
  if not Neutro then
    neu := ' and c.tpcon <> ''N'' ';

  // Verifica se o Relatorio vai ser por conta ou por Grupo
    Result := ' select sum(a.valor) as Saldo from fimov a ' +
              ' inner join ficon c on c.cdcon = a.cdcon ' +
              ' inner join figru g on g.cdgru = c.cdgru ' +
              ' where '+ Dt + neu + grup + con;
end;

end.
