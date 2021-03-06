﻿unit uClasseRelatorio;

interface

uses
  Data.SqlExpr, Data.DB,System.classes;

Type
  TRelatorio = Class
  private

  public

    function SQLCaixa ( Data,Gru, Neutro : Boolean;Grupo, Conta : String ): String;
    function SQLCaixaTotalizador( Data, Gru, Neutro : Boolean; Grupo, Conta : String ): String;


end;

implementation

uses
  System.SysUtils;

{ TRelatorio }

// Monta o sql com os filtro do Relatorio
function TRelatorio.SQLCaixa( Data, Gru, Neutro : Boolean; Grupo, Conta : String ): String;
var
 Dt, grup, con, neu : String;
begin
  if Data then
    Dt := ' and b.dtope between :DTINI and :DTEND and a.dtope between :DTINI and :DTEND ';
  if Grupo <> EmptyStr then
    grup := ' and g.cdgru = ' + Grupo + ' and a.cdcon in ( select cdcon from ficon where cdgru = ' + Grupo + ' ) ';

  if Conta <> EmptyStr then begin
    con := ' and c.cdcon = ' + Conta + ' and a.cdcon = ' + Conta;
  end;
  if Neutro then
    neu := ' and c.tpcon in (''N'',''R'',''D'') '
  else
    neu := ' and c.tpcon <> ''N'' ';

  // Verifica se o Relatorio vai ser por conta ou por Grupo
  if Gru then
    Result :=  ' select  g.nmgru, ' +
               ' (case when c.tpcon = ''R'' then b.valor else 0.00 end ) as entrada, ' +
               ' (case when c.tpcon = ''D'' then b.valor else 0.00 end ) as saida, ' +
               ' (case when c.tpcon = ''N'' then b.valor else 0.00 end ) as Neutro, ' +
               ' sum(a.valor) as Saldo ' +
               ' from fimov a,fimov b ' +
               ' inner join ficon c on c.cdcon = b.cdcon ' +
               ' inner join figru g on g.cdgru = c.cdgru ' +
               ' where a.cdmov <= b.cdmov ' + neu + grup +
               ' group by b.cdmov,entrada,saida,g.nmgru,g.cdgru,neutro ' +
               ' order by b.cdmov '
  else
    Result := ' select c.nmcon,b.dtope,b.descri, ' +
              ' (case when c.tpcon = ''R'' then b.valor else 0.00 end ) as entrada, ' +
              ' (case when c.tpcon = ''D'' then b.valor else 0.00 end ) as saida, ' +
              ' (case when c.tpcon = ''N'' then b.valor else 0.00 end ) as Neutro, ' +
              ' sum(a.valor) as Saldo ' +
              ' from fimov a,fimov b ' +
              ' inner join ficon c on c.cdcon = b.cdcon ' +
              ' where a.cdmov <= b.cdmov ' + neu + Dt + con +
              ' group by b.cdmov,entrada,saida,c.nmcon,b.dtope,b.descri,Neutro ' +
              ' order by b.cdmov,b.dtope ';

end;

// Monta o sql com os filtro do Relatorio
function TRelatorio.SQLCaixaTotalizador( Data, Gru, Neutro : Boolean; Grupo, Conta : String ): String;
var
 Dt, grup, con, neu : String;
begin
  if Data then
    Dt := ' and m.dtope between :DTINI and :DTEND ';
  if Grupo <> EmptyStr then
    grup := ' and g.cdgru = ' + Grupo;

  if Conta <> EmptyStr then begin
    con := ' and c.cdcon = ' + Conta + ' and m.cdcon = ' + Conta;
  end;
  if Neutro then
    neu := ' where c.tpcon in (''N'',''R'',''D'') '
  else
    neu := ' where c.tpcon <> ''N'' ';

  // Verifica se o Relatorio vai ser por conta ou por Grupo
  if Gru then
    Result :=  ' select count(m.cdmov) as Total_Registro, ' +
               ' sum( m.valor ) as Saldo_Total, ' +
               ' sum( case when c.tpcon = ''R'' then m.valor else 0.00 end ) as Total_Entrada, ' +
               ' sum( case when c.tpcon = ''D'' then m.valor else 0.00 end ) as Total_Saida, ' +
               ' sum( case when c.tpcon = ''N'' then m.valor else 0.00 end ) as Total_Neutro ' +
               ' from fimov m ' +
               ' inner join ficon c on c.cdcon = m.cdcon ' +
               ' inner join figru g on g.cdgru = c.cdgru ' + neu + grup

  else
    Result :=  ' select count(m.cdmov) as Total_Registro, ' +
               ' sum( m.valor ) as Saldo_Total, ' +
               ' sum( case when c.tpcon = ''R'' then m.valor else 0.00 end ) as Total_Entrada, ' +
               ' sum( case when c.tpcon = ''D'' then m.valor else 0.00 end ) as Total_Saida, ' +
               ' sum( case when c.tpcon = ''N'' then m.valor else 0.00 end ) as Total_Neutro ' +
               ' from fimov m ' +
               ' inner join ficon c on c.cdcon = m.cdcon ' + neu + Dt + con;

end;


end.
