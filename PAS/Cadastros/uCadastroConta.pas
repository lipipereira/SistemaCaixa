unit uCadastroConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uConn, uClasseConta, uClasseGrupo;

type
  TfrmCadastroConta = class(TForm)
    rgTipoConta: TRadioGroup;
    edtNomeConta: TEdit;
    cbxGrupo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    Label3: TLabel;
    pnCodConta: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroConta: TfrmCadastroConta;
  Conn : TConn;
  Conta : TConta;
  Grupo : TGrupo;

implementation

{$R *.dfm}

uses uLibrary, uTrataException;

procedure TfrmCadastroConta.btnConfirmarClick(Sender: TObject);
begin
  with Conta do begin
    Nome := edtNomeConta.Text;
    IdGru := Grupo.IdGrupo(cbxGrupo.Items[cbxGrupo.ItemIndex]);
    TpCon := TipoConta(rgTipoConta.ItemIndex,False);
    if Inserir then begin
      Application.MessageBox('Concluido!','Confirma��o',MB_OK);
      // Verifica se deseja cadastra outro grupo
      If (Application.MessageBox(' Deseja fazer outro cadastro? ', 'Salva',36) = 6) then begin
        LimpaCampos;
        Exit
      end;
    end else begin
      Application.MessageBox('O registro n�o foi alterado!','Aten��o',MB_OK);
    end;
  end;
  Close;
end;

procedure TfrmCadastroConta.FormCreate(Sender: TObject);
begin
  Conn := TConn.Create;
  Conta := TConta.Create(Conn);
  Grupo := TGrupo.Create(Conn);
end;

procedure TfrmCadastroConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmCadastroConta.FormShow(Sender: TObject);
begin
  pnCodConta.Caption := IntToStr(Conta.UltimoRegistro);
  cbxGrupo.Items := Grupo.ListaGrupo;
end;

end.
