unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Mask,
  Vcl.Buttons, uConn, uClasseGrupo, uClasseConta, uClasseRelatorio, Vcl.ExtCtrls;

type
  TfrmRelatorio = class(TForm)
    GroupBox1: TGroupBox;
    edtIni: TMaskEdit;
    edtEnd: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    gbFiltros: TGroupBox;
    cbxFiltroConta: TCheckBox;
    cbxFiltroGrupo: TCheckBox;
    cmbConta: TComboBox;
    Label4: TLabel;
    cmbGrupo: TComboBox;
    cbxFiltroAgrupa: TCheckBox;
    Label5: TLabel;
    btnGerar: TBitBtn;
    rgTipoConta: TRadioGroup;
    procedure cbxFiltroContaClick(Sender: TObject);
    procedure cbxFiltroGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure rgTipoContaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;
  Conn : TConn;
  Grupo : TGrupo;
  Conta : TConta;

implementation

{$R *.dfm}

uses uLibrary, uTrataException;

procedure TfrmRelatorio.cbxFiltroContaClick(Sender: TObject);
begin
  if cbxFiltroConta.Checked then begin
    cmbConta.Enabled := True;
    rgTipoConta.Enabled := True;
  end else begin
    cmbConta.Enabled := False;
    rgTipoConta.Enabled := False;
    cmbConta.ItemIndex := -1;
  end;
end;

procedure TfrmRelatorio.cbxFiltroGrupoClick(Sender: TObject);
begin
  if cbxFiltroGrupo.Checked then begin
    cmbGrupo.Enabled := True;
    cbxFiltroAgrupa.Enabled := true;
  end else begin
    cmbGrupo.Enabled := False;
    cbxFiltroAgrupa.Enabled := False;
    cmbConta.ItemIndex := -1;
  end;
end;

procedure TfrmRelatorio.FormCreate(Sender: TObject);
begin
  Conn := TConn.Create;
  Grupo := TGrupo.Create(Conn);
  Conta := TConta.Create(Conn);
end;

procedure TfrmRelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TfrmRelatorio.FormShow(Sender: TObject);
begin
  edtIni.Text := DateToStr(Date);
  edtEnd.Text := DateToStr(Date + 30);
  cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex,false ) );
  cmbGrupo.Items := Grupo.ListaGrupo;
end;

procedure TfrmRelatorio.rgTipoContaClick(Sender: TObject);
begin
  cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex,false ) );
end;

end.