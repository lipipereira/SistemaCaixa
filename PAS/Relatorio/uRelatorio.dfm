object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatorio de Caixa'
  ClientHeight = 262
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 168
    Top = 104
    Width = 33
    Height = 16
    Caption = 'Conta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 104
    Width = 34
    Height = 16
    Caption = 'Grupo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 233
    Height = 73
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 20
      Height = 16
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 114
      Top = 16
      Width = 23
      Height = 16
      Caption = 'ate:'
    end
    object edtIni: TMaskEdit
      Left = 16
      Top = 38
      Width = 81
      Height = 24
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edtEnd: TMaskEdit
      Left = 114
      Top = 38
      Width = 87
      Height = 24
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object gbFiltros: TGroupBox
    Left = 420
    Top = 8
    Width = 162
    Height = 129
    Caption = 'Filtros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object cbxFiltroConta: TCheckBox
      Left = 24
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Conta'
      TabOrder = 0
      OnClick = cbxFiltroContaClick
    end
    object cbxFiltroGrupo: TCheckBox
      Left = 24
      Top = 72
      Width = 97
      Height = 17
      Caption = 'Grupo'
      TabOrder = 1
      OnClick = cbxFiltroGrupoClick
    end
    object cbxNeutro: TCheckBox
      Left = 24
      Top = 95
      Width = 97
      Height = 17
      Caption = 'Incluir Neutro'
      TabOrder = 2
    end
    object cbxPorGrupo: TCheckBox
      Left = 40
      Top = 47
      Width = 97
      Height = 17
      Caption = 'Por Grupo'
      Enabled = False
      TabOrder = 3
      OnClick = cbxPorGrupoClick
    end
  end
  object cmbGrupo: TComboBox
    Left = 32
    Top = 126
    Width = 102
    Height = 24
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnGerar: TBitBtn
    Left = 525
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Gerar'
    Enabled = False
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object rgTipoConta: TRadioGroup
    Left = 255
    Top = 8
    Width = 130
    Height = 73
    Caption = 'Tipo da Conta'
    Enabled = False
    ItemIndex = 2
    Items.Strings = (
      'Receita'
      'Despesa'
      'Todos')
    TabOrder = 4
  end
  object btnBuscar: TBitBtn
    Left = 319
    Top = 126
    Width = 34
    Height = 25
    Caption = '...'
    Enabled = False
    TabOrder = 5
    OnClick = btnBuscarClick
  end
  object edtConta: TEdit
    Left = 168
    Top = 126
    Width = 145
    Height = 24
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnChange = edtContaChange
    OnKeyPress = edtContaKeyPress
  end
end
