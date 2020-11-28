unit uAlterMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls, uConn, uClasseMovimentacao, uClasseConta;

type
  TfrmAlterMovimetacao = class(TForm)
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
    procedure cmbContaEnter(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure rgTipoContaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterMovimetacao: TfrmAlterMovimetacao;
  Conn : TConn;
  Mov : TMovimento;
  Conta : TConta;

implementation

{$R *.dfm}

uses uBancoDados, uLibrary, uTrataException;

procedure TfrmAlterMovimetacao.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlterMovimetacao.btnConfirmarClick(Sender: TObject);
begin
  with Mov do begin
    Id := DM.cdsMov.Fields[0].Text;
    IdCon := Conta.IdCon(cmbConta.Items[cmbConta.ItemIndex]);
    Valor := VerificaTipo( rgTipoConta.ItemIndex,edtValor.Text);
    DtOpe := edtData.Text;
    Descri := mmDescri.Text;
    // Chamar a function para alterar
    if Alterar then begin
      Application.MessageBox('Concluido!','Confirma��o',MB_OK);
      Close;
    end else begin
      Application.MessageBox('O registro n�o foi alterado!','Aten��o',MB_OK);
    end;
  end;
end;

procedure TfrmAlterMovimetacao.cmbContaEnter(Sender: TObject);
begin
  // Lista os Grupos Caso aperte no ComboBox
  cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex ) );
end;

procedure TfrmAlterMovimetacao.FormCreate(Sender: TObject);
begin
  Conn := TConn.Create;
  Mov := TMovimento.Create(Conn);
  Conta := TConta.Create(Conn);
end;

procedure TfrmAlterMovimetacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmAlterMovimetacao.FormShow(Sender: TObject);
begin
  edtData.Text := DM.cdsMov.Fields[3].Text;
  edtValor.Text := Remove(DM.cdsMov.Fields[2].text);
  mmDescri.Lines.Add( DM.cdsMov.Fields[4].Text );
  // Adcionar o campo do ClientDataset selecionado no ComboBox e colocar ele em primeiro
  cmbConta.Items.Add(DM.cdsMov.Fields[1].Text);
  cmbConta.ItemIndex := 0;
  // Marca no RadioGroup o Tipo da Conta
  rgTipoConta.ItemIndex := Conta.TipoContaAlter(Conta.IdCon(cmbConta.Items[cmbConta.ItemIndex]));

end;

procedure TfrmAlterMovimetacao.rgTipoContaEnter(Sender: TObject);
begin
  // Limpar ComboBox ao seleciona um tipo de movimento
  cmbConta.Clear;
end;

end.
