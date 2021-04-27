object frmConta: TfrmConta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conta'
  ClientHeight = 328
  ClientWidth = 728
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
  PixelsPerInch = 96
  TextHeight = 13
  object lstConta: TDBGrid
    Left = 0
    Top = 72
    Width = 728
    Height = 256
    Align = alBottom
    DataSource = DM.dsConta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = lstContaDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CDCON'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMCON'
        Title.Alignment = taCenter
        Title.Caption = 'Conta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 188
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NMGRU'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TPCON'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 114
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTOPE'
        Title.Alignment = taCenter
        Title.Caption = 'Cadastro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'INATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Inativo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object btnInserir: TBitBtn
    Left = 8
    Top = 16
    Width = 97
    Height = 41
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btnInserirClick
  end
  object btnAlterar: TBitBtn
    Left = 127
    Top = 16
    Width = 97
    Height = 41
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnDeletar: TBitBtn
    Left = 247
    Top = 16
    Width = 97
    Height = 41
    Caption = 'Deletar'
    TabOrder = 3
    OnClick = btnDeletarClick
  end
end
