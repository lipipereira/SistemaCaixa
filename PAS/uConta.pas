unit uConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmConta = class(TForm)
    lstConta: TDBGrid;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure lstContaDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConta: TfrmConta;

implementation

{$R *.dfm}

uses uBancoDados, uLibrary, uTrataException, uAlterarConta, uCadastroConta,
  uClasseConta, uConn;

procedure TfrmConta.btnAlterarClick(Sender: TObject);
begin
  // Criar Form para Altera��o da conta
  CriarForm(TfrmAlterConta,frmAlterConta);
end;

procedure TfrmConta.btnInserirClick(Sender: TObject);
begin
  // Criar Form para Cadastra uma conta
  CriarForm(TfrmCadastroConta,frmCadastroConta);
end;

procedure TfrmConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmConta.lstContaDblClick(Sender: TObject);
begin
  // Criar Form para Altera��o da conta
  CriarForm(TfrmAlterConta,frmAlterConta);
end;

end.
