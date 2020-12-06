unit uGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, uClasseGrupo, uConn;

type
  TfrmGrupo = class(TForm)
    DBGrid1: TDBGrid;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnDeletar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupo: TfrmGrupo;
  Conn : TConn;
  Grupo : TGrupo;

implementation

{$R *.dfm}

uses uLibrary, uBancoDados, uCadastroGrupo, uAlterarGrupo;

procedure TfrmGrupo.btnAlterarClick(Sender: TObject);
begin
  // Criar form alterar Grupo
  CriarForm(TfrmAlterGrupo,frmAlterGrupo);
end;

procedure TfrmGrupo.btnDeletarClick(Sender: TObject);
begin
  // Verifica se deseja excuir o grupo
  If (Application.MessageBox(' Deseja excluir o grupo? ', 'Confirmação',36) = 6) then
    // Excluir o Grupo pegando o id do grupo
    if Grupo.Deletar( DM.cdsGrupo.Fields[0].Text )then
      Application.MessageBox(' Sucesso ao Excluir ','Confirmação',MB_OK)
    else
      Application.MessageBox(' Existe conta cadastrada com esse grupo, impossivel excluir ','Atenção',MB_OK)
end;

procedure TfrmGrupo.btnInserirClick(Sender: TObject);
begin
  // Criar form de Cadastro Grupo
  CriarForm(TfrmCadGrupo,frmCadGrupo);
end;

procedure TfrmGrupo.DBGrid1DblClick(Sender: TObject);
begin
  // Criar form alterar Grupo al click duas vezez
  CriarForm(TfrmAlterGrupo,frmAlterGrupo);
end;

procedure TfrmGrupo.FormCreate(Sender: TObject);
begin
  // Instacia as Classe
  Conn := TConn.Create;
  Grupo := TGrupo.Create(Conn);
end;

procedure TfrmGrupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close
  // Deleta ao aperta Ctrl + Delete
  else if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
    // Verifica se deseja excuir o grupo
    If (Application.MessageBox(' Deseja excluir o grupo? ', 'Confirmação',36) = 6) then
      // Excluir o Grupo pegando o id do grupo
      if Grupo.Deletar( DM.cdsGrupo.Fields[0].Text )then
        Application.MessageBox(' Sucesso ao Excluir ','Confirmação',MB_OK)
      else
        Application.MessageBox(' Existe conta cadastrada com esse grupo, impossivel excluir ','Atenção',MB_OK)

end;

end.
