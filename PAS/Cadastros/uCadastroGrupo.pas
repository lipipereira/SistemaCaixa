unit uCadastroGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uClasseGrupo, uConn;

type
  TfrmCadGrupo = class(TForm)
    pnCodigo: TPanel;
    edtNomeGrupo: TEdit;
    btnConfirmar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrupo: TfrmCadGrupo;
  Conn : TConn;
  Grupo : TGrupo;

implementation

{$R *.dfm}

uses uTrataException, uLibrary;

procedure TfrmCadGrupo.btnConfirmarClick(Sender: TObject);
begin
  with Grupo do begin
    Nome := edtNomeGrupo.Text;
    // Verifica se o grupo ja existe
    if VerificaGrupo then begin
      Application.MessageBox('Grupo ja existe!','Aten��o',MB_OK);
      exit
    end else
      // Inserir no banco
      if Inserir then begin
        Application.MessageBox('Concluido!','Confirma��o',MB_OK);
        // Verifica se deseja cadastra outro grupo
        If (Application.MessageBox(' Deseja fazer outro cadastro? ', 'Salva',36) = 6) then begin
          LimpaCampos;
          pnCodigo.Caption := ProxRegistro( 'GEN_FIGRU_ID', Conn.conexao );
          exit
        end;
      end else begin
        Application.MessageBox('O registro n�o foi salvo!','Aten��o',MB_OK);
      end;
  end;
  Close;
end;

procedure TfrmCadGrupo.FormCreate(Sender: TObject);
begin
  // Instancia Class no Form
  Conn := TConn.Create;
  Grupo := TGrupo.Create(Conn);
end;

procedure TfrmCadGrupo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmCadGrupo.FormShow(Sender: TObject);
begin
  // Pega o ultimo registro do banco e adciona mais 1 e colocar no Panel
  pnCodigo.Caption := ProxRegistro( 'GEN_FIGRU_ID', Conn.conexao );
end;

end.
