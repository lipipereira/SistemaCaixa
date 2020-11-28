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
    Label5: TLabel;
    btnGerar: TBitBtn;
    rgTipoConta: TRadioGroup;
    cbxNeutro: TCheckBox;
    procedure cbxFiltroContaClick(Sender: TObject);
    procedure cbxFiltroGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure rgTipoContaClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
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
  Rel : TRelatorio;
  gru, con : String;

implementation

{$R *.dfm}

uses uLibrary, uTrataException, uBancoDados, uBancoRelatorio, Data.FmtBcd;

procedure TfrmRelatorio.btnGerarClick(Sender: TObject);
begin
  gru := Grupo.IdGrupo( cmbGrupo.Items[cmbGrupo.ItemIndex] );
  con := Conta.IdCon( cmbConta.Items[cmbConta.ItemIndex] );

  if cbxFiltroGrupo.Checked then begin
  // Monta o SQl do Relatorio de Grupo e passa para o componete
    Lst(
      Rel.SQLCaixa(
        False ,cbxFiltroGrupo.Checked,cbxNeutro.Checked,
        gru,con
       ),DM_REL.sqlCaixaGrupo,DM_REL.relCaixaGrupo,EmptyStr,EmptyStr
    );
    // Monta o SQL do totalizador e passa para o componete
    Lst(
      Rel.SQLCaixaTotalizador(
        False ,cbxFiltroGrupo.Checked,cbxNeutro.Checked,
        gru,con
       ),DM_REL.sqlTotalizadores,DM_REL.relCaixaGrupo,EmptyStr,EmptyStr
    );
    GeraRelatorio(DM_REL.relCaixaGrupo);
  end else begin
    // Monta o SQl do Relatorio de COnta e passa para o componete
    Lst(
      Rel.SQLCaixa(
        true, cbxFiltroGrupo.Checked,cbxNeutro.Checked,
        gru,con
       ),DM_REL.sqlCaixaConta,DM_REL.relCaixaConta,edtIni.Text,edtEnd.Text
    );
    // Monta o SQL do totalizador e passa para o componete
    Lst(
      Rel.SQLCaixaTotalizador(
        true, cbxFiltroGrupo.Checked,cbxNeutro.Checked,
        gru,con
       ),DM_REL.sqlTotalizadores,DM_REL.relCaixaConta,edtIni.Text,edtEnd.Text
    );
    GeraRelatorio(DM_REL.relCaixaConta);
  end;
end;

procedure TfrmRelatorio.cbxFiltroContaClick(Sender: TObject);
begin
  if cbxFiltroConta.Checked then begin
    cmbConta.Enabled := True;
    rgTipoConta.Enabled := True;
    cbxFiltroGrupo.Enabled := False;
    btnGerar.Enabled := True;
  end else begin
    cmbConta.Enabled := False;
    rgTipoConta.Enabled := False;
    cmbConta.ItemIndex := -1;
    cbxFiltroGrupo.Enabled := True;
    btnGerar.Enabled := False;
  end;
end;

procedure TfrmRelatorio.cbxFiltroGrupoClick(Sender: TObject);
begin
  if cbxFiltroGrupo.Checked then begin
    cmbGrupo.Enabled := True;
    cbxFiltroConta.Enabled := False;
    GroupBox1.Enabled := False;
    btnGerar.Enabled := True;
  end else begin
    cmbGrupo.Enabled := False;
    cmbGrupo.ItemIndex := -1;
    cbxFiltroConta.Enabled := True;
    btnGerar.Enabled := False;
    GroupBox1.Enabled := True;
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
  cmbGrupo.Items := Grupo.ListaGrupo;
  edtIni.Text := DateToStr(Date);
  edtEnd.Text := DateToStr(Date + 30);
end;

procedure TfrmRelatorio.rgTipoContaClick(Sender: TObject);
begin
  if rgTipoConta.ItemIndex = 2 then
    cmbConta.ItemIndex := -1
  else
    cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex ) );
end;

end.
