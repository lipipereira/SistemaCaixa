unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Mask,
  Vcl.Buttons, uConn, uClasseGrupo, uClasseConta, uClasseRelatorio, Vcl.ExtCtrls,DateUtils;

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

implementation

{$R *.dfm}

uses uLibrary, uTrataException, uBancoDados, uBancoRelatorio, Data.FmtBcd;

procedure TfrmRelatorio.btnGerarClick(Sender: TObject);
var
  gru, con : String;
begin
  // Pega o item selecionado no ComboBox
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
  // Ativa ou Desativa componeste de acordo com o filtro marcado
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
  // Ativa ou Desativa componeste de acordo com o filtro marcado
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
  // Instancia as Classes
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
  //Lista os Grupo
  cmbGrupo.Items := Grupo.ListaGrupo;
  // Pegas a primeira e a ultima data do m�s corrente
  edtIni.Text := DateToStr(StartofTheMonth(Date));
  edtEnd.Text := DateToStr(EndOfTheMonth(Date));
end;

procedure TfrmRelatorio.rgTipoContaClick(Sender: TObject);
begin
  // Coloca vazio no ComboBox se tive selecionado todos no filtro
  if rgTipoConta.ItemIndex = 2 then
    cmbConta.ItemIndex := -1
  else
    // Lista os tipo de conta no ComboBox
    cmbConta.Items := Conta.ListaConta( TipoConta( rgTipoConta.ItemIndex ) );
end;

end.
