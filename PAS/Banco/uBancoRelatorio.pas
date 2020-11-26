unit uBancoRelatorio;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, frxClass, frxDBSet, Data.DB,
  Data.SqlExpr;

type
  TDM_REL = class(TDataModule)
    relCaixa: TfrxReport;
    sqlRelCai: TSQLQuery;
    dsRelCai: TfrxDBDataset;
    sqlRelCaiNMCON: TStringField;
    sqlRelCaiDTOPE: TDateField;
    sqlRelCaiDESCRI: TStringField;
    sqlRelCaiENTRADAS: TFMTBCDField;
    sqlRelCaiSAIDAS: TFMTBCDField;
    relCaixaGrupo: TfrxReport;
    sqlRelCaiGru: TSQLQuery;
    dsRelCaixaGrupo: TfrxDBDataset;
    sqlRelCaiGruNMGRU: TStringField;
    sqlRelCaiGruENTRADA: TFMTBCDField;
    sqlRelCaiGruSAIDAS: TFMTBCDField;
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
