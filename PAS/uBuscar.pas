unit uBuscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls,
  Vcl.DBGrids, Vcl.StdCtrls,Data.SqlExpr, uClasseGrupo,
  uClasseConta, Vcl.Grids, Datasnap.DBClient, Provider;

type
  TfrmBuscar = class(TForm)
    lstBuscar: TDBGrid;
    Panel1: TPanel;
    cmbBuscar: TComboBox;
    edtBuscar: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lstBuscarDblClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure lstBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure cmbBuscarChange(Sender: TObject);
  private
    { Private declarations }
    NomeBuscar, SQLBuscar, atAlias: String;
    Procedure AbreQuery( atAlias, atSql: String );
  public
    { Public declarations }
    class function Buscar( sqlBuscar, Alias: String ): String;
  end;

var
  frmBuscar: TfrmBuscar;
  IDBuscar: String;
  SQL: TSQLQuery;
  Cds: TClientDataSet;

implementation

{$R *.dfm}

uses uConn, uLibrary, uBancoDados, uCadastroMovimentacao;

class function TfrmBuscar.Buscar( sqlBuscar, Alias: String ): String;
var
  frm: TfrmBuscar;
begin
  frm := TfrmBuscar.Create(nil);
  try

    // Criar os componetes SQLQuery, CLientDataSet, DataSetProvide e DataSource
    frm.AbreQuery(Alias, sqlBuscar);
    frm.atAlias := Alias;

    // mostrar o Form
    IDBuscar := EmptyStr;
    frm.ShowModal;
    // Retorna o valor selecionado
    Result := frm.NomeBuscar;
  finally
    if (frm<>nil) then
      FreeAndNil(frm);
  end;
end;

procedure TfrmBuscar.cmbBuscarChange(Sender: TObject);
begin
  case cmbBuscar.itemIndex of
    0: SQLBuscar := ' select * from ficon order by cdcon' ;
    1: SQLBuscar := ' select * from ficon where tpcon = ''R'' order by cdcon ' ;
    2: SQLBuscar := ' select * from ficon where tpcon = ''D'' order by cdcon ' ;
    3: SQLBuscar := ' select * from ficon where tpcon = ''N'' order by cdcon ' ;
  end;
  with SQL do begin
    Close;
    SQL.Clear;
    SQL.Add( SQLBuscar );
    Cds.Refresh;
    Open;
  end;
end;

procedure TfrmBuscar.edtBuscarChange(Sender: TObject);
var
  sLinhaSQL: String;
begin

  case cmbBuscar.itemIndex of
    0: sLinhaSQL := ' select * from ficon where nmcon LIKE ''%' + edtBuscar.Text + '%'' ' ;
    1: sLinhaSQL := ' select * from ficon where nmcon LIKE ''%' + edtBuscar.Text + '%'' and tpcon = ''R''' ;
    2: sLinhaSQL := ' select * from ficon where nmcon LIKE ''%' + edtBuscar.Text + '%'' and tpcon = ''D''' ;
    3: sLinhaSQL := ' select * from ficon where nmcon LIKE ''%' + edtBuscar.Text + '%'' and tpcon = ''N''' ;
  end;

  with SQL do begin
    // Troca o SQL
    Close;
    SQL.Clear;
    SQL.ADD(sLinhaSQL);
  end;
  // Verifica se esta vazio ou não
  if edtBuscar.Text <> EmptyStr then begin
    SQL.Open;
    Cds.Refresh;
  end else begin
    with SQL do begin
      Close;
      SQL.Clear;
      SQL.Add( SQLBuscar );
      Cds.Refresh;
      Open;
    end;
  end;
end;

procedure TfrmBuscar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmBuscar.lstBuscarDblClick(Sender: TObject);
begin
  // Passar para as variavel o valor selecionado
  IDBuscar := lstBuscar.Columns.Items[0].Field.Value;
  NomeBuscar := lstBuscar.Columns.Items[1].Field.Value;
  Close;
end;

procedure TfrmBuscar.lstBuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    // Passar para as variavel o valor selecionado
    IDBuscar := lstBuscar.Columns.Items[0].Field.Value;
    NomeBuscar := lstBuscar.Columns.Items[1].Field.Value;
    Close;
  end;
end;

Procedure TfrmBuscar.AbreQuery( atAlias, atSql: String );
var
   Query     : TSQLQuery;
   Provider  : TDataSetProvider;
   Client    : TClientDataSet;
   Ds: TDataSource;
   campo: TField;
   i: Integer;
   {Criando os Componentes para Conexão da Tabela}
   procedure CriaComponentesConexao;
   begin
      {Criando os Componentes}
      {-> SQLQuery}
      Query                := TSQLQuery.Create( self );
      Query.Name           := 'sql' + atAlias;
      Query.SQL.Add(atSql);

      {-> Provider}
      Provider             := TDataSetProvider.Create( self );
      Provider.Name        := 'dsp' + atAlias;
      {-> ClientDataSet}
      Client               := TClientDataSet.Create( self );
      Client.Name          := 'cds' + atAlias;

      Ds := TDataSource.Create(self);
      Ds.Name := 'ds' + atAlias;

      {Linkando os Componentes}
      Query.SQLConnection  := DM.Banco;
      Query.Open;
      Provider.DataSet     := Query;
      Client.ProviderName  := Provider.name;
      Ds.DataSet := Client;
      SQLBuscar := atSql;
   end;
begin
  // Chamar a Procedure para Criar os componentes
  CriaComponentesConexao;
  try
    Client.Close;
    Client.FieldDefs.Clear;
    // Criar os Campos no ClientDataSet
    Client.FieldDefs.Add(Query.Fields[0].FieldName,ftInteger);
    Client.FieldDefs.Add(Query.Fields[1].FieldName,ftString,50);
    // Coloca o Campos no DBGrid
    lstBuscar.Columns[0].FieldName := Query.Fields[0].FieldName;
    lstBuscar.Columns[1].FieldName := Query.Fields[1].FieldName;
    // Ativa o ClientDataSet e Conectar o DataSource para o DBGrid
    Client.Active := True;
    lstBuscar.DataSource := Ds;
    // Passar os componentes para as variaveis da Classe
    SQL := Query;
    Cds := Client;
  except
  end;
end;

end.
