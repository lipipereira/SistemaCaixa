object frmTelaInicio: TfrmTelaInicio
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'SisCaixa'
  ClientHeight = 467
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 24
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Grupo1: TMenuItem
        Caption = 'Grupo'
        OnClick = Grupo1Click
      end
      object Conta1: TMenuItem
        Caption = 'Conta'
        OnClick = Conta1Click
      end
      object Movimentao2: TMenuItem
        Caption = 'Movimenta'#231#227'o'
        OnClick = Movimentao2Click
      end
    end
    object Relatorio1: TMenuItem
      Caption = 'Relatorio'
      OnClick = Relatorio1Click
    end
    object Movimentos1: TMenuItem
      object Movimentao1: TMenuItem
      end
    end
  end
end
