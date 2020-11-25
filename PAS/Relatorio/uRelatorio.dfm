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
    Height = 97
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
      Caption = 'Por Conta'
      TabOrder = 0
      OnClick = cbxFiltroContaClick
    end
    object cbxFiltroGrupo: TCheckBox
      Left = 24
      Top = 47
      Width = 97
      Height = 17
      Caption = 'Por Grupo'
      TabOrder = 1
      OnClick = cbxFiltroGrupoClick
    end
    object cbxFiltroAgrupa: TCheckBox
      Left = 38
      Top = 67
      Width = 107
      Height = 17
      Caption = 'Agrupar Grupo'
      Enabled = False
      TabOrder = 2
    end
  end
  object cmbConta: TComboBox
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
    TabOrder = 2
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
    TabOrder = 3
  end
  object btnGerar: TBitBtn
    Left = 213
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 4
  end
  object rgTipoConta: TRadioGroup
    Left = 255
    Top = 8
    Width = 159
    Height = 73
    Caption = 'Tipo da Conta'
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Receita'
      'Despesa'
      'Neutra')
    TabOrder = 5
    OnClick = rgTipoContaClick
  end
end