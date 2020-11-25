unit uCadastroMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls, uConn, uClasseMovimentacao, uClasseConta;

type
  TfrmCadMovimetacao = class(TForm)
    edtValor: TEdit;
    mmDescri: TMemo;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    edtData: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmbConta: TComboBox;
    rgTipoConta: TRadioGroup;
    Label4: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgTipoContaClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMovimetacao: TfrmCadMovimetacao;
  Conn : TConn;
  Mov : TMovimento;
  Conta : TConta;

implementation

{$R *.dfm}

uses uLibrary, uTrataException;

procedure TfrmCadMovimetacao.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadMovimetacao.btnConfirmarClick(Sender: TObject);
begin
  with Mov do begin
    Valor := edtValor.Text;
    IdCon := Conta.IdCon(cmbConta.Items[cmbConta.ItemIndex]);
    Descri := mmDescri.Text;
    DtOpe := edtData.Text;
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

procedure TfrmCadMovimetacao.FormCreate(Sender: TObject);
begin
  Conn := TConn.Create;
  Mov := TMovimento.Create(Conn);
  Conta := TConta.Create(Conn);
end;

procedure TfrmCadMovimetacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmCadMovimetacao.FormShow(Sender: TObject);
begin
  edtData.Text := DateToStr( Date );
  cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex,false ) );
end;

procedure TfrmCadMovimetacao.rgTipoContaClick(Sender: TObject);
begin
  cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex,false ) );
end;

end.
