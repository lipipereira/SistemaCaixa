unit uAlterarConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  uConn, uClasseConta, uClasseGrupo;

type
  TfrmAlterConta = class(TForm)
    Label1: TLabel;
    edtNomeConta: TEdit;
    pnCodigo: TPanel;
    Label2: TLabel;
    rgTipoConta: TRadioGroup;
    cbxInativo: TCheckBox;
    cmbGrupo: TComboBox;
    Label3: TLabel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbGrupoEnter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterConta: TfrmAlterConta;
  Conn : TConn;
  Conta : TConta;
  Grupo : TGrupo;

implementation

{$R *.dfm}

uses uBancoDados, uLibrary, uTrataException;

procedure TfrmAlterConta.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlterConta.btnConfirmarClick(Sender: TObject);
begin
  with Conta do begin
    Id := pnCodigo.Caption;
    Nome := edtNomeConta.Text;
    TpCon := TipoConta(rgTipoConta.ItemIndex);
    Inativo := VerificaInativo(cbxInativo.Checked);
    IdGru := Grupo.IdGrupo(cmbGrupo.Items[cmbGrupo.ItemIndex]);
    // Chama a function alterar
    if Alterar then begin
      Application.MessageBox('Concluido!','Confirmação',MB_OK);
      Close;
    end else begin
      Application.MessageBox('O registro não foi alterado!','Atenção',MB_OK);
    end;
  end;
end;

procedure TfrmAlterConta.cmbGrupoEnter(Sender: TObject);
begin
  // Lista os Grupos Caso aperte no ComboBox
  cmbGrupo.Items := Grupo.ListaGrupo;
end;

procedure TfrmAlterConta.FormCreate(Sender: TObject);
begin
  // Instacias das Classes
  Conn := TConn.Create;
  Grupo := TGrupo.Create(Conn);
  Conta := TConta.Create(Conn);
end;

procedure TfrmAlterConta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmAlterConta.FormShow(Sender: TObject);
begin
  // Preencher todos os campos usando os dados do ClientDataSet ao Amotra o Form
  pnCodigo.Caption := DM.cdsConta.Fields[0].Text;
  edtNomeConta.Text := DM.cdsConta.Fields[1].Text;
  // Pega o Status da Conta e Colocar como Checked no componente
  if Conta.Status( pnCodigo.Caption ) = 'S' then
    cbxInativo.Checked := True
  else
    cbxInativo.Checked := False;
  // Marca no RadioGroup o Tipo da Conta
  rgTipoConta.ItemIndex := Conta.TipoContaAlter(pnCodigo.Caption);
  // Adcionar o campo do ClientDataset selecionado no ComboBox e colocar ele em primeiro
  cmbGrupo.Items.Add(DM.cdsConta.Fields[2].Text);
  cmbGrupo.ItemIndex := 0;
end;

end.
