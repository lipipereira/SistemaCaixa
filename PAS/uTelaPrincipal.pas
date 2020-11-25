unit uTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uConn, Vcl.Menus;

type
  TfrmTelaInicio = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Relatorio1: TMenuItem;
    Grupo1: TMenuItem;
    Conta1: TMenuItem;
    Movimentos1: TMenuItem;
    Movimentao1: TMenuItem;
    Movimentao2: TMenuItem;
    procedure Grupo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Conta1Click(Sender: TObject);
    procedure Movimentao2Click(Sender: TObject);
    procedure Relatorio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicio: TfrmTelaInicio;
  Conn : TConn;

implementation

{$R *.dfm}

uses uTrataException, uLibrary, uGrupo, uBancoDados, uConta, uMovimentacao,
  uRelatorio;

procedure TfrmTelaInicio.Conta1Click(Sender: TObject);
begin
  CriarForm(TfrmConta,frmConta);
end;

procedure TfrmTelaInicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If (Application.MessageBox('Deseja fecha o sistema?', 'Sair do sistema',
    36) = 6) then begin
    Application.Terminate;
  end else begin
    abort;
  end;
end;

procedure TfrmTelaInicio.FormCreate(Sender: TObject);
begin
  Conn := TConn.Create;
  // Pega o caminho e coloca no componete ao criar o Form
  Conn.Caminho;
  // Ativa os componetes
  DM.cdsGrupo.Active := True;
  DM.cdsConta.Active := True;
  DM.cdsMov.Active := True;
end;

procedure TfrmTelaInicio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmTelaInicio.Grupo1Click(Sender: TObject);
begin
  CriarForm(TfrmGrupo,frmGrupo);
end;

procedure TfrmTelaInicio.Movimentao2Click(Sender: TObject);
begin
  CriarForm(TfrmMovimentacao,frmMovimentacao);
end;

procedure TfrmTelaInicio.Relatorio1Click(Sender: TObject);
begin
  CriarForm( TfrmRelatorio,frmRelatorio );
end;

end.