unit uMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, uConn, uClasseMovimentacao;

type
  TfrmMovimentacao = class(TForm)
    DBGrid1: TDBGrid;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnDeletar: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnInserirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacao: TfrmMovimentacao;
  Conn : TConn;
  Mov : TMovimento;

implementation

{$R *.dfm}

uses uBancoDados, uLibrary, uTrataException,
  uCadastroMovimentacao, uAlterMovimentacao;

procedure TfrmMovimentacao.btnAlterarClick(Sender: TObject);
begin
  // Criar form de alterar Movimentação
  CriarForm(TfrmAlterMovimetacao,frmAlterMovimetacao);
end;

procedure TfrmMovimentacao.btnDeletarClick(Sender: TObject);
begin
  if Mov.Deletar( DM.cdsMov.Fields[0].Text ) then begin
    Application.MessageBox('Concluido!','Confirmação',MB_OK);
  end else begin
    Application.MessageBox('O registro não foi alterado!','Atenção',MB_OK);
  end;
end;

procedure TfrmMovimentacao.btnInserirClick(Sender: TObject);
begin
  // Criar form de cadastro Movimentação
  CriarForm(TfrmCadMovimetacao,frmCadMovimetacao);
end;

procedure TfrmMovimentacao.DBGrid1DblClick(Sender: TObject);
begin
// Criar form de alterar Movimentação ao clica duas vezes na linha
  CriarForm(TfrmAlterMovimetacao,frmAlterMovimetacao);
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  // Instacia as Class do Form
  Conn := TConn.Create;
  Mov := TMovimento.Create(Conn);
end;

procedure TfrmMovimentacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close
  // Deleta ao aperta Ctrl + Delete
  else if (Shift = [ssCtrl]) and (Key = VK_DELETE) then begin
    // Verifica se deseja excuir o movimento
    If (Application.MessageBox(' Deseja excluir o Movimento? ', 'Confirmação',36) = 6) then begin
      // Excluir o Grupo pegando o id do movimento
      if Mov.Deletar( DM.cdsMov.Fields[0].Text )then
        Application.MessageBox(' Sucesso ao Excluir ','Confirmação',MB_OK)
    end;
  end;
end;

end.
