unit uClasseMovimentacao;

interface

uses
  uConn, Data.SqlExpr, Data.DB,System.classes,StrUtils;

Type
    TMovimento = class
    private
    // A varialve Conex�o receber a class da Unit uConn
    Conexao: TConn;
    // propriendades do usuario
    FId : String;
    FDescri : string;
    FIdCon : String;
    FValor : String;
    FDtOpe : string;

    FQry: TSQLQuery;
    FDs: TDataSource;
    FDsPesquisa: TDataSource;
    FQryPesquisa: TSQLQuery;
    procedure SetDs(const Value: TDataSource);
    procedure SetDsPesquisa(const Value: TDataSource);
    procedure SetDtOpe(const Value: String);
    procedure SetId(const Value: String);
    procedure SetIdCon(const Value: String);
    procedure SetDescri(const Value: String);
    procedure SetQry(const Value: TSQLQuery);
    procedure SetQryPesquisa(const Value: TSQLQuery);
    procedure SetValor(const Value: String);

    public
    constructor Create(Conn : TConn);

    // Propriedades
    property Id : String read FId write SetId;
    property Descri : String read FDescri write SetDescri;
    property DtOpe: String read FDtOpe write SetDtOpe;
    property Valor: String read FValor write SetValor;
    property IdCon: String read FIdCon write SetIdCon;

    // Componentes
    property Qry : TSQLQuery read FQry write SetQry;
    property QryPesquisa : TSQLQuery read FQryPesquisa write SetQryPesquisa;
    property Ds : TDataSource read FDs write SetDs;
    property DsPesquisa : TDataSource read FDsPesquisa write SetDsPesquisa;

    // Metodos
    function Inserir : Boolean;
    function Alterar : Boolean;
    function Deletar( Id : String ) : Boolean;

end;


implementation

uses
  System.SysUtils, uBancoDados;

{ TMovimento }

constructor TMovimento.Create(Conn: TConn);
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

function TMovimento.Inserir: Boolean;
begin
  with Qry do begin
    Close;
    SQL.Text := ' insert into fimov( cdcon, valor, dtope, descri ) ' +
                ' values ( :CDCON, :VALOR, :DTOPE, :DESCRI ) ';
    Params.ParamByName('CDCON').Value := StrToInt( FIdCon );
    Params.ParamByName('VALOR').Value := StrToFloat( FValor );
    Params.ParamByName('DTOPE').Value := StrToDate( FDtOpe );
    Params.ParamByName('DESCRI').Value := FDescri;
    try
      ExecSQL();
      DM.cdsMov.Refresh;
      Result := True; // Retorna True se Executa sem erro
    except
      Result := False; // Retorna False se Executa com erro
    end;
  end;
end;

function TMovimento.Alterar: Boolean;
begin
  with Qry do begin
    Close;
    SQL.Text := ' update fimov set cdcon = :CDCON, valor = :VALOR, dtope = :DTOPE, descri = :DESCRI ' +
                ' where cdmov = :CDMOV ';
    Params.ParamByName('CDCON').Value:= StrToInt(FIdCon);
    Params.ParamByName('VALOR').Value:= StrToFloat(FValor);
    Params.ParamByName('DTOPE').Value:= StrToDate(FDtOpe);
    Params.ParamByName('DESCRI').Value := FDescri;
    Params.ParamByName('CDMOV').Value := StrToInt(FId);
    try
      ExecSQL();
      DM.cdsMov.Refresh;
      Result := True;  // Retorna True se Executa sem erro
    except
      Result := False; // Retorna False se Executa com erro
    end;
  end;
end;

function TMovimento.Deletar( Id : String ): Boolean;
begin
  with Qry do begin
    Close;
    SQL.Text := ' delete from fimov where cdmov = :CDMOV ' ;
    Params.ParamByName('CDMOV').Value := StrToInt(Id);
    try
      ExecSQL();
      DM.cdsMov.Refresh;
      Result := True;  // Retorna True se Executa sem erro
    except
      Result := False; // Retorna False se Executa com erro
    end;
  end;
end;

procedure TMovimento.SetDs(const Value: TDataSource);
begin
  FDs := Value;
end;

procedure TMovimento.SetDsPesquisa(const Value: TDataSource);
begin
  FDsPesquisa := Value;
end;

procedure TMovimento.SetDtOpe(const Value: String);
begin
  if (Value = '  /  /    ' )then
    raise Exception.Create('Empreencha o Campo Data')
  else
  FDtOpe := Value;
end;

procedure TMovimento.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TMovimento.SetIdCon(const Value: String);
begin
  if Value= EmptyStr then
    raise Exception.Create('Empreencha o Campo Conta')
  else
  FIdCon := Value;
end;

procedure TMovimento.SetDescri(const Value: String);
begin
  FDescri := Value;
end;

procedure TMovimento.SetQry(const Value: TSQLQuery);
begin
  FQry := Value;
end;

procedure TMovimento.SetQryPesquisa(const Value: TSQLQuery);
begin
  FQryPesquisa := Value;
end;

procedure TMovimento.SetValor(const Value: String);
begin
  if Value = EmptyStr then
    raise Exception.Create('Empreencha o Campo Valor')
  else
  FValor := Value;
end;

end.
