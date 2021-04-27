unit uConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, uConn, uClasseConta;

type
  TfrmConta = class(TForm)
    lstConta: TDBGrid;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnDeletar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure lstContaDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConta: TfrmConta;
  Con: TConn;
  Conta: TConta;

implementation

{$R *.dfm}

uses uBancoDados, uLibrary, uTrataException, uAlterarConta, uCadastroConta;

procedure TfrmConta.btnAlterarClick(Sender: TObject);
begin
  // Criar Form para Alteração da conta
  CriarForm(TfrmAlterConta,frmAlterConta);
end;

procedure TfrmConta.btnDeletarClick(Sender: TObject);
begin
  // Verifica se deseja excuir o conta
  If (Application.MessageBox(' Deseja excluir a conta? ', 'Confirmação',36) = 6) then begin
    // Excluir o Grupo pegando o id do conta
    if Conta.Deletar( DM.cdsConta.Fields[0].Text )then
      Application.MessageBox(' Sucesso ao Excluir ','Confirmação',MB_OK)
    else
      Application.MessageBox(' Existe movimentação dessa conta, impossivel excluir ','Atenção',MB_OK)
  end;
end;

procedure TfrmConta.btnInserirClick(Sender: TObject);
begin
  // Criar Form para Cadastra uma conta
  CriarForm(TfrmCadastroConta,frmCadastroConta);
end;

procedure TfrmConta.FormCreate(Sender: TObject);
begin
  // Instacia as Class do Form
  Conn := TConn.Create;
  Conta := TConta.Create(Conn);
end;

procedure TfrmConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close
  // Deleta ao aperta Ctrl + Delete
  else if (Shift = [ssCtrl]) and (Key = VK_DELETE) then begin
    // Verifica se deseja excuir o conta
    If (Application.MessageBox(' Deseja excluir a conta? ', 'Confirmação',36) = 6) then begin
      // Excluir o Grupo pegando o id do conta
      if Conta.Deletar( DM.cdsConta.Fields[0].Text )then
        Application.MessageBox(' Sucesso ao Excluir ','Confirmação',MB_OK)
      else
        Application.MessageBox(' Existe movimentação dessa conta, impossivel excluir ','Atenção',MB_OK)
    end;
  end;
end;

procedure TfrmConta.lstContaDblClick(Sender: TObject);
begin
  // Criar Form para Alteração da conta  ao click duas vezes
  CriarForm(TfrmAlterConta,frmAlterConta);
end;

end.
