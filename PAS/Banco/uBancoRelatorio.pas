unit uBancoRelatorio;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, frxClass, frxDBSet, Data.DB,
  Data.SqlExpr, Data.DBXFirebird;

type
  TDM_REL = class(TDataModule)
    relCaixaConta: TfrxReport;
    dsCaixaConta: TfrxDBDataset;
    sqlCaixaConta: TSQLQuery;
    relCaixaGrupo: TfrxReport;
    dsCaixaGrupo: TfrxDBDataset;
    sqlCaixaGrupo: TSQLQuery;
    sqlCaixaContaNMCON: TStringField;
    sqlCaixaContaDTOPE: TDateField;
    sqlCaixaContaENTRADA: TFMTBCDField;
    sqlCaixaContaSAIDA: TFMTBCDField;
    sqlCaixaContaNEUTRO: TFMTBCDField;
    sqlCaixaContaSALDO: TFMTBCDField;
    sqlCaixaContaDESCRI: TStringField;
    sqlCaixaGrupoNMGRU: TStringField;
    sqlCaixaGrupoENTRADA: TFMTBCDField;
    sqlCaixaGrupoSAIDA: TFMTBCDField;
    sqlCaixaGrupoNEUTRO: TFMTBCDField;
    sqlCaixaGrupoSALDO: TFMTBCDField;
    relCaixaPorConta: TfrxReport;
    dsCaixaPorConta: TfrxDBDataset;
    sqlCaixaPorConta: TSQLQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    dsTotalizador: TfrxDBDataset;
    sqlTotalizador: TSQLQuery;
    sqlTotalizadorSALDO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_REL: TDM_REL;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uBancoDados;

{$R *.dfm}

end.
