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
    Options = [dgTitles, dgRowLines, dgRowSelect]
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
        Expanded = False
        FieldName = 'CDCON'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMCON'
        Title.Caption = 'Nome Conta'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMGRU'
        Title.Caption = 'Nome do Grupo'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTOPE'
        Title.Caption = 'Cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INATIVO'
        Title.Caption = 'Inativo'
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
end