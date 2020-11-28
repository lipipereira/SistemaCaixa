unit uBancoDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXFirebird,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    Banco: TSQLConnection;
    sqlGrupo: TSQLQuery;
    cdsGrupo: TClientDataSet;
    dspGrupo: TDataSetProvider;
    dsGrupo: TDataSource;
    sqlGrupoCDGRU: TIntegerField;
    sqlGrupoNMGRU: TStringField;
    sqlGrupoDTOPE: TDateField;
    sqlGrupoINATIVO: TStringField;
    cdsGrupoCDGRU: TIntegerField;
    cdsGrupoNMGRU: TStringField;
    cdsGrupoDTOPE: TDateField;
    cdsGrupoINATIVO: TStringField;
    sqlConta: TSQLQuery;
    cdsConta: TClientDataSet;
    dspConta: TDataSetProvider;
    dsConta: TDataSource;
    sqlContaCDCON: TIntegerField;
    sqlContaNMCON: TStringField;
    sqlContaNMGRU: TStringField;
    sqlContaDTOPE: TDateField;
    sqlContaINATIVO: TStringField;
    cdsContaCDCON: TIntegerField;
    cdsContaNMCON: TStringField;
    cdsContaNMGRU: TStringField;
    cdsContaDTOPE: TDateField;
    cdsContaINATIVO: TStringField;
    sqlMov: TSQLQuery;
    cdsMov: TClientDataSet;
    dspMov: TDataSetProvider;
    dsMov: TDataSource;
    cdsMovCDMOV: TIntegerField;
    cdsMovNMCON: TStringField;
    cdsMovVALOR: TFMTBCDField;
    cdsMovDTOPE: TDateField;
    sqlMovCDMOV: TIntegerField;
    sqlMovNMCON: TStringField;
    sqlMovVALOR: TFMTBCDField;
    sqlMovDTOPE: TDateField;
    sqlMovDESCRI: TStringField;
    cdsMovDESCRI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
