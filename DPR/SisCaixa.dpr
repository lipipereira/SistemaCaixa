program SisCaixa;

uses
  Vcl.Forms,
  uTelaPrincipal in '..\PAS\uTelaPrincipal.pas' {frmTelaInicio},
  uConn in '..\PAS\Classe\uConn.pas',
  uTrataException in '..\PAS\Classe\uTrataException.pas',
  uBancoDados in '..\PAS\Banco\uBancoDados.pas' {DM: TDataModule},
  uGrupo in '..\PAS\uGrupo.pas' {frmGrupo},
  uClasseGrupo in '..\PAS\Classe\uClasseGrupo.pas',
  uLibrary in '..\PAS\Classe\uLibrary.pas',
  uCadastroGrupo in '..\PAS\Cadastros\uCadastroGrupo.pas' {frmCadGrupo},
  uAlterarGrupo in '..\PAS\Alterar\uAlterarGrupo.pas' {frmAlterGrupo},
  uConta in '..\PAS\uConta.pas' {frmConta},
  uCadastroConta in '..\PAS\Cadastros\uCadastroConta.pas' {frmCadastroConta},
  uAlterarConta in '..\PAS\Alterar\uAlterarConta.pas' {frmAlterConta},
  uClasseConta in '..\PAS\Classe\uClasseConta.pas',
  uMovimentacao in '..\PAS\uMovimentacao.pas' {frmMovimentacao},
  uClasseMovimentacao in '..\PAS\Classe\uClasseMovimentacao.pas',
  uCadastroMovimentacao in '..\PAS\Cadastros\uCadastroMovimentacao.pas' {frmCadMovimetacao},
  uAlterMovimentacao in '..\PAS\Alterar\uAlterMovimentacao.pas' {frmAlterMovimetacao},
  uRelatorio in '..\PAS\Relatorio\uRelatorio.pas' {frmRelatorio},
  uClasseRelatorio in '..\PAS\Classe\uClasseRelatorio.pas',
  uBancoRelatorio in '..\PAS\Banco\uBancoRelatorio.pas' {DM_REL: TDataModule};


  {$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_REL, DM_REL);
  Application.CreateForm(TfrmTelaInicio, frmTelaInicio);
  Application.Run;
end.
