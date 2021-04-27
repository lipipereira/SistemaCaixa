object frmBuscar: TfrmBuscar
  Left = 0
  Top = 0
  ActiveControl = edtBuscar
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 212
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lstBuscar: TDBGrid
    Left = 0
    Top = 65
    Width = 466
    Height = 147
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = lstBuscarDblClick
    OnKeyPress = lstBuscarKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CDBAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NMBAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 173
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 65
    Align = alTop
    Caption = '0000000'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 7
      Width = 29
      Height = 16
      Caption = 'Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 7
      Width = 55
      Height = 16
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cmbBuscar: TComboBox
      Left = 16
      Top = 27
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Todos'
      OnChange = cmbBuscarChange
      Items.Strings = (
        'Todos'
        'Receita'
        'Despesa'
        'Neutro')
    end
    object edtBuscar: TEdit
      Left = 120
      Top = 27
      Width = 297
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edtBuscarChange
    end
  end
end
