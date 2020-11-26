unit uClasseSQL;

interface
  // Fun��o para retorna SQl do Relatorio
  function SQL_RelatorioConta : String;
  function SQL_RelatorioGrupo : String;

implementation

// Fun��o para retorna SQl do Relatorio
function SQL_RelatorioConta : String;
begin
  Result := ' select con.nmcon, mov.dtope, mov.descri, ' +
            ' (case when con.tpcon = ''R'' then mov.valor else 0.00 end ) as entradas, '  +
            ' (case when con.tpcon = ''D'' then mov.valor else 0.00 end ) as saidas '  +
            ' from fimov mov ' +
            ' inner join ficon con on con.cdcon = mov.cdcon ';
end;

function SQL_RelatorioGrupo : String;
begin
  Result := ' select gru.nmgru, ' +
            ' (case when con.tpcon = ''R'' then mov.valor else 0.00 end ) as entrada, '  +
            ' (case when con.tpcon = ''D'' then mov.valor else 0.00 end ) as saidas '  +
            ' from fimov mov ' +
            ' inner join ficon con on con.cdcon = mov.cdcon ' +
            ' inner join figru gru on gru.cdgru = con.cdgru ';
end;

end.
