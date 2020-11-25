﻿unit uClasseRelatorio;

interface

uses
  Data.SqlExpr, Data.DB,System.classes;

Type
  TRelatorio = Class
  private

  public
    // Metodos
    function SQLReceita_Despesa ( Banco, Conta, Valor : String ; Filtro : Integer ): String;
    function SQLDivida ( Banco, Conta, Valor : String ;
                        Filtro, FiltroData, StatusDiv : Integer ): String;

end;

implementation

uses
  System.SysUtils;

{ TRelatorio }

function TRelatorio.SQLReceita_Despesa(Banco, Conta, Valor: String;
  Filtro: Integer): String;
var
  Ban, Con, Val : String;
begin
  if Banco <> EmptyStr then
    Ban := ' and ban.nmban = ' +QuotedStr(Banco);
  if Conta <> EmptyStr then
    Con := ' and con.nmcon = ' +QuotedStr(Conta);
  if Valor <> EmptyStr then
    case Filtro of // Verifica o filtro do valor
      0: Begin
        Val := ' and mov.valor = ' +QuotedStr(Valor);
      End;
      1: begin
        Val := ' and mov.valor >= ' +QuotedStr(Valor);
      end;
      2: begin
        Val := ' and mov.valor <= ' +QuotedStr(Valor);
      end;
    end;
  Result :=  Ban + Con + Val ;
end;

function TRelatorio.SQLDivida(Banco, Conta, Valor : String; Filtro,
  FiltroData, StatusDiv : Integer): String;
var
  Ban, Con, Val, Data, Status : String;
begin
  // Verifica o filtro De data
  case FiltroData of
    0: Begin
      Data := ' WHERE DIV.DTOPE BETWEEN :DTINI AND :DTEND ';
    End;
    1: begin
      Data := ' WHERE DIV.DTVEN BETWEEN :DTINI AND :DTEND ';
    end;
    2: begin
      Data := ' WHERE DIV.DTPG BETWEEN :DTINI AND :DTEND ';
    end;
  end;
  // Verifica o filtro De Status
  case FiltroData of
    1: begin
      Status := ' AND DIV.STATUS = ''PG'' ';
    end;
    2: begin
      Status := ' AND DIV.STATUS = ''NP'' ';
    end;
  end;
  if Banco <> EmptyStr then
    Ban := ' and ban.nmban = ' +QuotedStr(Banco);
  if Conta <> EmptyStr then
    Con := ' and con.nmcon = ' +QuotedStr(Conta);
  if Valor <> EmptyStr then
    // Verifica o filtro do valor
    case Filtro of
      0: Begin
        Val := ' and div.valor = ' +QuotedStr(Valor);
      End;
      1: begin
        Val := ' and div.valor >= ' +QuotedStr(Valor);
      end;
      2: begin
        Val := ' and div.valor <= ' +QuotedStr(Valor);
      end;
    end;
  Result := Data + Status;
end;

end.