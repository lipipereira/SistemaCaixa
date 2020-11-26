object DM_REL: TDM_REL
  OldCreateOrder = False
  Height = 292
  Width = 457
  object relCaixa: TfrxReport
    Version = '6.7.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44160.598394166700000000
    ReportOptions.LastChange = 44160.627893182870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 128
    Top = 16
    Datasets = <
      item
        DataSet = dsRelCai
        DataSetName = 'dsCai'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.566068890000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000020000000000
          Top = 9.991238890000000000
          Width = 715.888013990000000000
          Height = 25.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Caixa')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.454957780000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = dsRelCai
        DataSetName = 'dsCai'
        RowCount = 0
        object dsCaiNMCON: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 10.333333340000000000
          Width = 109.221501110000000000
          Height = 18.897650000000000000
          DataField = 'NMCON'
          DataSet = dsRelCai
          DataSetName = 'dsCai'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCai."NMCON"]')
        end
        object dsCaiDTOPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 112.111111120000000000
          Top = 10.677901110000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DTOPE'
          DataSet = dsRelCai
          DataSetName = 'dsCai'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCai."DTOPE"]')
        end
        object dsCaiDESCRI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 195.444444440000000000
          Top = 10.344567780000000000
          Width = 136.185735560000000000
          Height = 18.897650000000000000
          DataField = 'DESCRI'
          DataSet = dsRelCai
          DataSetName = 'dsCai'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCai."DESCRI"]')
        end
        object dsCaiENTRADAS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 364.666666670000000000
          Top = 10.677901130000000000
          Width = 100.070088890000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADAS'
          DataSet = dsRelCai
          DataSetName = 'dsCai'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCai."ENTRADAS"]')
        end
        object dsCaiSAIDAS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 473.222222220000000000
          Top = 10.677901110000000000
          Width = 105.625644440000000000
          Height = 18.897650000000000000
          DataField = 'SAIDAS'
          DataSet = dsRelCai
          DataSetName = 'dsCai'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCai."SAIDAS"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 36.010513330000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 42.520100000000000000
          Top = 14.444444440000000000
          Width = 50.035044440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 2.222222220000000000
          Top = 13.528241110000000000
          Width = 37.821583330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'pag.')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 46.010513340000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 9.777777780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 115.555555560000000000
          Top = 8.888888890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 210.000000000000000000
          Top = 9.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Historico')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333340000000000
          Top = 8.888888890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 475.555555560000000000
          Top = 8.888888890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saida')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 581.111111110000000000
          Top = 8.888888890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 38.836322220000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 43.788291110000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 11.434652220000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.333333330000000000
          Top = 22.545763330000000000
          Width = 107.821583330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total . . .  :')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 602.222222230000000000
          Top = 17.526488890000000000
          Width = 73.377138890000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<dsCai."ENTRADAS">-<dsCai."SAIDAS">,MasterData1)]')
        end
      end
    end
  end
  object sqlRelCai: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select con.nmcon, mov.dtope, mov.descri,'
      
        '(case when con.tpcon = '#39'R'#39' then mov.valor else 0.00 end ) as ent' +
        'rada,'
      
        '(case when con.tpcon = '#39'D'#39' then mov.valor else 0.00 end ) as sai' +
        'das'
      'from fimov mov'
      'inner join ficon con on con.cdcon = mov.cdcon')
    SQLConnection = DM.Banco
    Left = 24
    Top = 16
    object sqlRelCaiNMCON: TStringField
      FieldName = 'NMCON'
      Size = 30
    end
    object sqlRelCaiDTOPE: TDateField
      FieldName = 'DTOPE'
    end
    object sqlRelCaiDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 80
    end
    object sqlRelCaiENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 18
      Size = 2
    end
    object sqlRelCaiSAIDAS: TFMTBCDField
      FieldName = 'SAIDAS'
      Precision = 18
      Size = 2
    end
  end
  object dsRelCai: TfrxDBDataset
    UserName = 'dsCai'
    CloseDataSource = False
    DataSet = sqlRelCai
    BCDToCurrency = False
    Left = 80
    Top = 16
  end
  object relCaixaGrupo: TfrxReport
    Version = '6.7.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44160.598394166700000000
    ReportOptions.LastChange = 44160.698423854170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 128
    Top = 64
    Datasets = <
      item
        DataSet = dsRelCaixaGrupo
        DataSetName = 'dsCaiGru'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 71.566068890000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.000000020000000000
          Top = 9.991238890000000000
          Width = 715.888013990000000000
          Height = 25.564316670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Caixa')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.454957780000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = dsRelCaixaGrupo
        DataSetName = 'dsCaiGru'
        RowCount = 0
        object dsCaiNMCON: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 10.333333340000000000
          Width = 109.221501110000000000
          Height = 18.897650000000000000
          DataField = 'NMGRU'
          DataSet = dsRelCaixaGrupo
          DataSetName = 'dsCaiGru'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCaiGru."NMGRU"]')
        end
        object dsCaiDTOPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 112.111111120000000000
          Top = 10.677901110000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADA'
          DataSet = dsRelCaixaGrupo
          DataSetName = 'dsCaiGru'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCaiGru."ENTRADA"]')
        end
        object dsCaiDESCRI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 195.444444440000000000
          Top = 10.344567780000000000
          Width = 136.185735560000000000
          Height = 18.897650000000000000
          DataField = 'SAIDAS'
          DataSet = dsRelCaixaGrupo
          DataSetName = 'dsCaiGru'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCaiGru."SAIDAS"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 36.010513330000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 42.520100000000000000
          Top = 14.444444440000000000
          Width = 50.035044440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 2.222222220000000000
          Top = 13.528241110000000000
          Width = 37.821583330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'pag.')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 46.010513340000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 11.777777780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Grupo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 108.888888900000000000
          Top = 12.222222220000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 230.000000000000000000
          Top = 12.222222220000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saida')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 331.111111110000000000
          Top = 12.222222220000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 38.836322220000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 43.788291110000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 11.434652220000000000
          Width = 716.666666670000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.333333330000000000
          Top = 22.545763330000000000
          Width = 107.821583330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total . . .  :')
          ParentFont = False
        end
      end
    end
  end
  object sqlRelCaiGru: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select gru.nmgru,'
      
        '(case when con.tpcon = '#39'R'#39' then mov.valor else 0.00 end ) as ent' +
        'rada,'
      
        '(case when con.tpcon = '#39'D'#39' then mov.valor else 0.00 end ) as sai' +
        'das'
      'from fimov mov'
      'inner join ficon con on con.cdcon = mov.cdcon'
      'inner join figru gru on gru.cdgru = con.cdgru')
    SQLConnection = DM.Banco
    Left = 24
    Top = 64
    object sqlRelCaiGruNMGRU: TStringField
      FieldName = 'NMGRU'
      Size = 50
    end
    object sqlRelCaiGruENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object sqlRelCaiGruSAIDAS: TFMTBCDField
      FieldName = 'SAIDAS'
      Precision = 18
      Size = 2
    end
  end
  object dsRelCaixaGrupo: TfrxDBDataset
    UserName = 'dsCaiGru'
    CloseDataSource = False
    DataSet = sqlRelCaiGru
    BCDToCurrency = False
    Left = 80
    Top = 64
  end
end
