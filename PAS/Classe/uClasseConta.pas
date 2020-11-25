﻿unit uClasseConta;

interface

uses
  uConn, Data.SqlExpr, Data.DB,System.classes,StrUtils;

Type
    TConta = class
    private
    // A varialve Conex�o receber a class da Unit uConn
    Conexao: TConn;
    // propriendades do usuario
    FId : String;
    FNome : string;
    FIdGru : String;
    FTpCon : String;
    FDtOpe : string;
    FInativo : String;

    FQry: TSQLQuery;
    FDs: TDataSource;
    FDsPesquisa: TDataSource;
    FQryPesquisa: TSQLQuery;
    procedure SetDs(const Value: TDataSource);
    procedure SetDsPesquisa(const Value: TDataSource);
    procedure SetQry(const Value: TSQLQuery);
    procedure SetQryPesquisa(const Value: TSQLQuery);
    procedure SetDtOpe(const Value: String);
    procedure SetId(const Value: String);
    procedure SetIdGru(const Value: String);
    procedure SetInativo(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetTpCon(const Value: String);

    public
    constructor Create(Conn : TConn);

    // Propriedades
    property Id : String read FId write SetId;
    property Nome : String read FNome write SetNome;
    property DtOpe: String read FDtOpe write SetDtOpe;
    property Inativo: String read FInativo write SetInativo;
    property TpCon: String read FTpCon write SetTpCon;
    property IdGru: String read FIdGru write SetIdGru;

    // Componentes
    property Qry : TSQLQuery read FQry write SetQry;
    property QryPesquisa : TSQLQuery read FQryPesquisa write SetQryPesquisa;
    property Ds : TDataSource read FDs write SetDs;
    property DsPesquisa : TDataSource read FDsPesquisa write SetDsPesquisa;

    // Metodos
    function Inserir : Boolean;
    function UltimoRegistro : Integer;
    function Alterar : Boolean;
    function Status( Id : String ) : String;
    function TipoContaAlter ( Id : String ) : Integer;
    function ListaConta( TpConta : String ) : TStrings;
    function IdCon( Nome : String ) : string;

end;

implementation

uses
  System.SysUtils, uBancoDados;

{ TConta }

constructor TConta.Create(Conn: TConn);
begin
  Conexao := Conn;
  Qry := TSQLQuery.Create(nil);
  Ds := TDataSource.Create(nil);

  QryPesquisa := TSQLQuery.Create(nil);
  DsPesquisa := TDataSource.Create(nil);
  // Conecta a Query no TSQLconnection
  Qry.SQLConnection := Conexao.ConexaoBanco;
  QryPesquisa.SQLConnection := Conexao.ConexaoBanco;

  Ds.DataSet := Qry;
  DsPesquisa.DataSet := QryPesquisa;
end;

function TConta.Inserir : Boolean;
begin
  with Qry do begin
    Close;
    SQL.Text := ' insert into ficon ( nmcon, cdgru, tpcon, dtope ) ' +
                ' values ( :NMCON, :CDGRU, :TPCON, :DTOPE ) ';
    Params.ParamByName('NMCON').Value := FNome;
    Params.ParamByName('CDGRU').Value := FIdGru;
    Params.ParamByName('TPCON').Value := FTpCon;
    Params.ParamByName('DTOPE').Value := Date;
    try
      ExecSQL();
      DM.cdsConta.Refresh;
      Result := True; // Retorna True se Executa sem erro
    except
      Result := False; // Retorna False se Executa com erro
    end;
  end;
end;

function TConta.UltimoRegistro: Integer;
begin
  with QryPesquisa do begin
    Close;
    SQL.Text := ' select max(cdcon) from ficon ';
    try
      Open;
      Result := FieldByName('MAX').AsInteger + 1; // Retorna o registro do banco
    except
      Result := 0;
    end;
  end;
end;

function TConta.Alterar: Boolean;
begin
  with Qry do begin
    Close;
    SQL.Text := ' update ficon set nmcon = :NMCON, inativo = :INTV, tpcon = :TPCON, cdgru = :CDGRU ' +
                ' where cdcon = :CDCON ';
    Params.ParamByName('NMCON').Value:= FNome;
    Params.ParamByName('INTV').Value:= FInativo;
    Params.ParamByName('TPCON').Value:= FTpCon;
    Params.ParamByName('CDGRU').Value := StrToInt(FIdGru);
    Params.ParamByName('CDCON').Value := StrToInt(FId);
    try
      ExecSQL();
      DM.cdsConta.Refresh;
      Result := True;  // Retorna True se Executa sem erro
    except
      Result := False; // Retorna False se Executa com erro
    end;
  end;
end;

function TConta.Status(Id: String): String;
begin
  with QryPesquisa do begin
    Close;
    SQL.Text := ' select inativo from ficon where cdcon = '+Id;
    try
      Open;
      Result := FieldByName('inativo').AsString; // Retorna o registro do banco
    except
      Result := '0';
    end;
  end;
end;

function TConta.TipoContaAlter ( Id : String ) : Integer;
var
  tp : String;
begin
  with QryPesquisa do begin
    Close;
    SQL.Text := ' select tpcon from ficon where cdcon = '+Id;
    try
      Open;
      tp := FieldByName('tpcon').AsString; // Retorna o registro do banco
    finally
      case AnsiIndexStr(tp,['R','D','N']) of
        0 : begin
          Result := 0;
        end;
        1 : begin
          Result := 1;
        end;
        2 : Begin
          Result := 2;
        End;
      end;
    end;
  end;
end;

function TConta.ListaConta( TpConta : String ): TStrings;
begin
  Result := TStringList.Create;
  Result.Clear;
  Result.BeginUpdate;
  with QryPesquisa do begin
    Close;
      SQL.Text := ' select nmcon from ficon where tpcon = :TPCON ';
      Params.ParamByName('TPCON').Value := TpConta;
    try
    Open;
    finally
      First;
      while not Eof do begin
        Result.Add(FieldByName('nmcon').AsString);
        Next;
      end;
    end;
  end;
  Result.EndUpdate;
end;

function TConta.IdCon(Nome: String): string;
begin
  with QryPesquisa do begin
    Close;
    SQL.Text := ' select cdcon from ficon where nmcon = :NMCON';
    Params.ParamByName('NMCON').Value := Nome;
    try
      Open;
      Result := FieldByName('cdcon').AsString; // Retorna o registro do banco
    except
      Result := '0';
    end;
  end;
end;


procedure TConta.SetDs(const Value: TDataSource);
begin
  FDs := Value;
end;

procedure TConta.SetDsPesquisa(const Value: TDataSource);
begin
  FDsPesquisa := Value;
end;

procedure TConta.SetDtOpe(const Value: String);
begin
  FDtOpe := Value;
end;

procedure TConta.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TConta.SetIdGru(const Value: String);
begin
  FIdGru := Value;
end;

procedure TConta.SetInativo(const Value: String);
begin
  FInativo := Value;
end;

procedure TConta.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TConta.SetQry(const Value: TSQLQuery);
begin
  FQry := Value;
end;

procedure TConta.SetQryPesquisa(const Value: TSQLQuery);
begin
  FQryPesquisa := Value;
end;

procedure TConta.SetTpCon(const Value: String);
begin
  FTpCon := Value;
end;

end.
