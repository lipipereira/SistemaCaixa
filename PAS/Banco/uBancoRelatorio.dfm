object DM_REL: TDM_REL
  OldCreateOrder = False
  Height = 292
  Width = 457
  object relCaixaConta: TfrxReport
    Version = '6.7.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44162.567475659700000000
    ReportOptions.LastChange = 44171.785925231500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 24
    Datasets = <
      item
        DataSet = dsCaixaConta
        DataSetName = 'dsCaixaConta'
      end
      item
        DataSet = dsTotalizador
        DataSetName = 'dsTotalizador'
      end>
    Variables = <
      item
        Name = ' Criada'
        Value = Null
      end
      item
        Name = 'DTINI'
        Value = Null
      end
      item
        Name = 'DTEND'
        Value = Null
      end>
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 31.111111120000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 31.111111120000000000
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.555555560000000000
          Top = 6.666666670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 102.222222230000000000
          Top = 6.666666670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 201.111111110000000000
          Top = 7.777777780000000000
          Width = 176.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Historico')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 608.888888890000000000
          Top = 6.666666670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 498.888888890000000000
          Top = 6.666666670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saida')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 384.444444450000000000
          Top = 6.666666670000000000
          Width = 115.599361110000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 25.704184440000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = dsCaixaConta
        DataSetName = 'dsCaixaConta'
        RowCount = 0
        object dsCaixaContaNMCON: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 5.039270000000000000
          Width = 94.777056670000000000
          Height = 18.897650000000000000
          DataField = 'NMCON'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaConta."NMCON"]')
          ParentFont = False
        end
        object dsCaixaContaDTOPE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 101.111111110000000000
          Top = 5.695423340000000000
          Width = 88.259018890000000000
          Height = 18.897650000000000000
          DataField = 'DTOPE'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaConta."DTOPE"]')
          ParentFont = False
        end
        object dsCaixaContaENTRADA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 381.111111110000000000
          Top = 6.806534440000000000
          Width = 110.070088890000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADA'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaConta."ENTRADA"]')
          ParentFont = False
        end
        object dsCaixaContaSAIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.888888880000000000
          Top = 5.695423330000000000
          Width = 97.847866670000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaConta."SAIDA"]')
          ParentFont = False
        end
        object dsCaixaContaSALDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 573.333333320000000000
          Top = 5.695423330000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaConta."SALDO"]')
          ParentFont = False
        end
        object dsCaixaContaDESCRI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 204.444444430000000000
          Top = 0.568542230000000000
          Width = 187.296846670000000000
          Height = 18.897650000000000000
          DataField = 'DESCRI'
          DataSet = dsCaixaConta
          DataSetName = 'dsCaixaConta'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCaixaConta."DESCRI"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 43.788291110000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 8.075035560000000000
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 35.555555560000000000
          Top = 17.963924440000000000
          Width = 36.036796670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.333333330000000000
          Top = 18.075035560000000000
          Width = 30.043805560000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pag.')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 78.888888890000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 4.435683330000000000
          Width = 717.821583330000000000
          Height = 31.119872220000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Caixa')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.777777780000000000
          Top = 55.546794440000000000
          Width = 28.932694450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'De:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 134.444444440000000000
          Top = 55.546794440000000000
          Width = 28.932694450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'at'#233':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 541.111111110000000000
          Top = 55.546794450000000000
          Width = 77.821583330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Data atual')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 624.444444450000000000
          Top = 55.546794450000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object DTINI: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 40.000000000000000000
          Top = 55.546794450000000000
          Width = 86.036796670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DTINI]')
          ParentFont = False
        end
        object DTEND: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 165.555555560000000000
          Top = 55.546794450000000000
          Width = 84.925685560000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DTEND]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 182.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = dsTotalizador
        DataSetName = 'dsTotalizador'
        RowCount = 0
        object dsTotalizadorSALDO_TOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.222222220000000000
          Top = 6.990207780000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO_TOTAL'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."SALDO_TOTAL"]')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 33.053287780000000000
          Width = 171.154916670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor das entradas .. . :')
          ParentFont = False
        end
        object dsTotalizadorTOTAL_ENTRADA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 174.444444450000000000
          Top = 32.545763330000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ENTRADA'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_ENTRADA"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 60.831065550000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor das saida.. . :')
          ParentFont = False
        end
        object dsTotalizadorTOTAL_SAIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 150.000000000000000000
          Top = 61.434652220000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_SAIDA'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_SAIDA"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 89.719954440000000000
          Width = 182.266027780000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidado de Conta . .. . :')
          ParentFont = False
        end
        object dsTotalizadorTOTAL_REGISTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 185.555555560000000000
          Top = 91.434652220000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_REGISTRO'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_REGISTRO"]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 6.657905560000000000
          Width = 160.043805550000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo do periodo. . . . :')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 2.545763330000000000
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object dsCaixaConta: TfrxDBDataset
    UserName = 'dsCaixaConta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NMCON=NMCON'
      'DTOPE=DTOPE'
      'DESCRI=DESCRI'
      'ENTRADA=ENTRADA'
      'SAIDA=SAIDA'
      'NEUTRO=NEUTRO'
      'SALDO=SALDO')
    DataSet = sqlCaixaConta
    BCDToCurrency = False
    Left = 48
    Top = 24
  end
  object sqlCaixaConta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select C.NMCON, B.DTOPE, B.DESCRI,'
      '(case when C.TPCON = '#39'R'#39' then B.VALOR else 0.00 end) as ENTRADA,'
      '(case when C.TPCON = '#39'D'#39' then B.VALOR else 0.00 end) as SAIDA,'
      '(case when C.TPCON = '#39'N'#39' then B.VALOR else 0.00 end) as NEUTRO,'
      'sum(A.VALOR) as SALDO'
      'from FIMOV A, FIMOV B'
      'inner join FICON C on C.CDCON = B.CDCON'
      'where A.CDMOV <= B.CDMOV'
      
        'group by B.CDMOV, ENTRADA, SAIDA, C.NMCON, B.DTOPE, B.DESCRI, NE' +
        'UTRO'
      'order by B.CDMOV, B.DTOPE')
    SQLConnection = DM.Banco
    Left = 8
    Top = 24
    object sqlCaixaContaNMCON: TStringField
      FieldName = 'NMCON'
      Size = 30
    end
    object sqlCaixaContaDTOPE: TDateField
      FieldName = 'DTOPE'
    end
    object sqlCaixaContaDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 80
    end
    object sqlCaixaContaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object sqlCaixaContaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object sqlCaixaContaNEUTRO: TFMTBCDField
      FieldName = 'NEUTRO'
      Precision = 18
      Size = 2
    end
    object sqlCaixaContaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object relCaixaGrupo: TfrxReport
    Version = '6.7.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44163.340960370400000000
    ReportOptions.LastChange = 44163.347355590300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 80
    Datasets = <
      item
        DataSet = dsCaixaGrupo
        DataSetName = 'daCaixaGrupo'
      end
      item
        DataSet = dsTotalizador
        DataSetName = 'dsTotalizador'
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
        Height = 72.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 6.657905560000000000
          Width = 727.821583330000000000
          Height = 38.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de caixa por grupo')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 622.222222220000000000
          Top = 49.991238890000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 537.777777780000000000
          Top = 49.991238890000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data Atual')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 24.628117780000000000
        Top = 222.992270000000000000
        Width = 718.110700000000000000
        DataSet = dsCaixaGrupo
        DataSetName = 'daCaixaGrupo'
        RowCount = 0
        object daCaixaGrupoNMGRU: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 5.730467780000000000
          Width = 107.296846670000000000
          Height = 18.897650000000000000
          DataField = 'NMGRU'
          DataSet = dsCaixaGrupo
          DataSetName = 'daCaixaGrupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[daCaixaGrupo."NMGRU"]')
          ParentFont = False
        end
        object daCaixaGrupoENTRADA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 107.777777780000000000
          Top = 5.730467780000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADA'
          DataSet = dsCaixaGrupo
          DataSetName = 'daCaixaGrupo'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[daCaixaGrupo."ENTRADA"]')
          ParentFont = False
        end
        object daCaixaGrupoSAIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.000000000000000000
          Top = 5.730467780000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = dsCaixaGrupo
          DataSetName = 'daCaixaGrupo'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[daCaixaGrupo."SAIDA"]')
          ParentFont = False
        end
        object daCaixaGrupoSALDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 414.444444440000000000
          Top = 3.508245560000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = dsCaixaGrupo
          DataSetName = 'daCaixaGrupo'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[daCaixaGrupo."SALDO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.899402220000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.062358890000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = -0.111111110000000000
          Width = 717.777777780000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 36.666666670000000000
          Top = 6.937641110000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 47.725211110000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 9.947433330000000000
          Width = 717.777777780000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 16.502988890000000000
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
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 128.888888890000000000
          Top = 18.836322220000000000
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
            'Entrada')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 265.555555550000000000
          Top = 19.947433330000000000
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
            'Saida')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 424.444444450000000000
          Top = 19.947433330000000000
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
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 47.725211110000000000
          Width = 717.777777780000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 139.343846660000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = dsTotalizador
        DataSetName = 'dsTotalizador'
        RowCount = 0
        object dsTotalizadorTOTAL_ENTRADA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 164.444444440000000000
          Top = 36.762728890000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ENTRADA'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_ENTRADA"]')
        end
        object dsTotalizadorTOTAL_SAIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 164.444444450000000000
          Top = 63.429395560000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_SAIDA'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_SAIDA"]')
        end
        object dsTotalizadorSALDO_TOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 147.777777780000000000
          Top = 7.873840000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO_TOTAL'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."SALDO_TOTAL"]')
        end
        object dsTotalizadorTOTAL_REGISTRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 191.111111120000000000
          Top = 93.429395550000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_REGISTRO'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."TOTAL_REGISTRO"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 7.873840000000000000
          Width = 146.710472220000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total do Saldo . . . . :')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 36.762728890000000000
          Width = 168.932694440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total das entradas. . . . :')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 6.762728890000000000
          Width = 717.777777780000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 64.540506670000000000
          Width = 168.932694440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total das saidas . . . :')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 93.429395550000000000
          Width = 198.932694440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade dos registros. . . :')
        end
      end
    end
  end
  object dsCaixaGrupo: TfrxDBDataset
    UserName = 'daCaixaGrupo'
    CloseDataSource = False
    DataSet = sqlCaixaGrupo
    BCDToCurrency = False
    Left = 48
    Top = 80
  end
  object sqlCaixaGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.Banco
    Left = 8
    Top = 80
    object sqlCaixaGrupoNMGRU: TStringField
      FieldName = 'NMGRU'
      Size = 50
    end
    object sqlCaixaGrupoENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object sqlCaixaGrupoSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object sqlCaixaGrupoNEUTRO: TFMTBCDField
      FieldName = 'NEUTRO'
      Precision = 18
      Size = 2
    end
    object sqlCaixaGrupoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object dsTotalizador: TfrxDBDataset
    UserName = 'dsTotalizador'
    CloseDataSource = False
    DataSet = sqlTotalizadores
    BCDToCurrency = False
    Left = 48
    Top = 128
  end
  object sqlTotalizadores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      '     select count(m.cdmov) as Total_Registro,'
      '                sum( m.valor ) as Saldo_Total,'
      
        '     sum( case when c.tpcon = '#39'R'#39' then m.valor else 0.00 end ) a' +
        's Total_Entrada,'
      
        '                sum( case when c.tpcon = '#39'D'#39' then m.valor else 0' +
        '.00 end ) as Total_Saida,'
      
        '     sum( case when c.tpcon = '#39'N'#39' then m.valor else 0.00 end ) a' +
        's Total_Neutro'
      '                from fimov m'
      '                inner join ficon c on c.cdcon = m.cdcon')
    SQLConnection = DM.Banco
    Left = 8
    Top = 128
    object sqlTotalizadoresTOTAL_REGISTRO: TLargeintField
      FieldName = 'TOTAL_REGISTRO'
      Required = True
    end
    object sqlTotalizadoresSALDO_TOTAL: TFMTBCDField
      FieldName = 'SALDO_TOTAL'
      Precision = 18
      Size = 2
    end
    object sqlTotalizadoresTOTAL_ENTRADA: TFMTBCDField
      FieldName = 'TOTAL_ENTRADA'
      Precision = 18
      Size = 2
    end
    object sqlTotalizadoresTOTAL_SAIDA: TFMTBCDField
      FieldName = 'TOTAL_SAIDA'
      Precision = 18
      Size = 2
    end
    object sqlTotalizadoresTOTAL_NEUTRO: TFMTBCDField
      FieldName = 'TOTAL_NEUTRO'
      Precision = 18
      Size = 2
    end
  end
end
