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
    ReportOptions.LastChange = 44312.382342789350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 16
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
          Left = 572.222222210000000000
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
        Top = 445.984540000000000000
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
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 123.788291110000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 3.656874440000000000
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 535.555555550000000000
          Top = 6.990207780000000000
          Width = 76.710472230000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo. .. .:')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 13.656874450000000000
          Width = 137.821583340000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de entradas. .. .:')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 41.434652220000000000
          Width = 131.154916670000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de saidas. .. .:')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 69.212430000000000000
          Width = 166.710472230000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de registro. .. .:')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 138.888888890000000000
          Top = 13.656874440000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<dsCaixaConta."ENTRADA">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 132.222222220000000000
          Top = 41.434652220000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<dsCaixaConta."SAIDA">,MasterData1)]')
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 167.777777780000000000
          Top = 69.212430000000000000
          Width = 66.710472220000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object dsTotalizadorSALDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.666666660000000000
          Top = 6.990207780000000000
          Width = 100.070088880000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."SALDO"]')
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
    Top = 16
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
    Top = 16
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
    ReportOptions.LastChange = 44311.476114155100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 72
    Datasets = <
      item
        DataSet = dsCaixaGrupo
        DataSetName = 'daCaixaGrupo'
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
          DataField = 'NEUTRO'
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
            '[daCaixaGrupo."NEUTRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 567.777777780000000000
          Top = 3.674396670000000000
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
        Top = 427.086890000000000000
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
          Left = 292.222222220000000000
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
          Left = 445.555555560000000000
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
            'Neutro')
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
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 564.444444440000000000
          Top = 18.836322220000000000
          Width = 131.154916670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo por Grupo')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 92.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 552.222222220000000000
          Top = 7.873840000000000000
          Width = 68.932694440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo . . .:')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 10.096062230000000000
          Width = 141.154916660000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de entradas . . .:')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 38.984951120000000000
          Width = 118.932694440000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de saidas . . .:')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 2.318284440000000000
          Width = 717.777777780000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 622.222222230000000000
          Top = 7.873840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<daCaixaGrupo."SALDO">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 145.555555550000000000
          Top = 10.096062230000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<daCaixaGrupo."ENTRADA">,MasterData1)]')
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 122.222222220000000000
          Top = 37.873840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<daCaixaGrupo."SAIDA">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 68.984951110000000000
          Width = 132.266027770000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de neutras . . .:')
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 136.666666660000000000
          Top = 68.984951110000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<daCaixaGrupo."NEUTRO">,MasterData1)]')
        end
      end
    end
  end
  object dsCaixaGrupo: TfrxDBDataset
    UserName = 'daCaixaGrupo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NMGRU=NMGRU'
      'ENTRADA=ENTRADA'
      'SAIDA=SAIDA'
      'NEUTRO=NEUTRO'
      'SALDO=SALDO')
    DataSet = sqlCaixaGrupo
    BCDToCurrency = False
    Left = 48
    Top = 72
  end
  object sqlCaixaGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gru.nmgru,'
      
        '(sum( case when con.tpcon = '#39'R'#39' then mov.valor else 0.00 end) ) ' +
        'as entrada,'
      
        '(sum( case when con.tpcon = '#39'D'#39' then mov.valor else 0.00 end) ) ' +
        'as saida,'
      
        '(sum( case when con.tpcon = '#39'N'#39' then mov.valor else 0.00 end) ) ' +
        'as neutro,'
      'sum ( mov.valor ) as saldo'
      'from fimov mov'
      'inner join ficon con on con.cdcon = mov.cdcon'
      'inner join figru gru on gru.cdgru = con.cdgru'
      'group by gru.nmgru')
    SQLConnection = DM.Banco
    Left = 8
    Top = 72
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
  object relCaixaPorConta: TfrxReport
    Version = '6.7.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44162.567475659700000000
    ReportOptions.LastChange = 44311.486825416660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 88
    Top = 200
    Datasets = <
      item
        DataSet = dsCaixaPorConta
        DataSetName = 'dsCaixaPorConta'
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
      end
      item
        Name = 'GRUP'
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
        Top = 188.976500000000000000
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
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        DataSet = dsCaixaPorConta
        DataSetName = 'dsCaixaPorConta'
        RowCount = 0
        object dsCaixaContaNMCON: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 5.039270000000000000
          Width = 94.777056670000000000
          Height = 18.897650000000000000
          DataField = 'NMCON'
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaPorConta."NMCON"]')
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
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dsCaixaPorConta."DTOPE"]')
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
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
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
            '[dsCaixaPorConta."ENTRADA"]')
          ParentFont = False
        end
        object dsCaixaContaSAIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 487.777777770000000000
          Top = 4.584312220000000000
          Width = 97.847866670000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
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
            '[dsCaixaPorConta."SAIDA"]')
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
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
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
            '[dsCaixaPorConta."SALDO"]')
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
          DataSet = dsCaixaPorConta
          DataSetName = 'dsCaixaPorConta'
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsCaixaPorConta."DESCRI"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 43.788291110000000000
        Top = 434.645950000000000000
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
        Height = 108.888888890000000000
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
          Left = 3.333333340000000000
          Top = 83.324572220000000000
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
          Left = 123.333333330000000000
          Top = 83.324572220000000000
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
          Left = 33.333333330000000000
          Top = 83.324572230000000000
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
          Left = 156.666666670000000000
          Top = 83.324572230000000000
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
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 54.435683340000000000
          Width = 125.599361110000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Grupo . ..:')
        end
        object GRUP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 140.000000000000000000
          Top = 54.435683330000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[GRUP]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 83.788291110000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 5.642856670000000000
          Width = 135.599361110000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de entrada . . .:')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 33.420634440000000000
          Width = 135.599361110000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de saidas . . .:')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 60.087301110000000000
          Width = 176.710472220000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidades de registro . . .:')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 136.666666670000000000
          Top = 5.642856670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<dsCaixaPorConta."ENTRADA">,MasterData1)]')
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 136.666666670000000000
          Top = 33.420634440000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<dsCaixaPorConta."SAIDA">,MasterData1)]')
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 181.111111110000000000
          Top = 60.087301110000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = -1.023810000000000000
          Width = 723.333333330000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 533.333333330000000000
          Top = 5.642856670000000000
          Width = 72.266027780000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo . . .:')
        end
        object dsTotalizadorSALDO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 605.555555550000000000
          Top = 5.642856670000000000
          Width = 116.736755560000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = dsTotalizador
          DataSetName = 'dsTotalizador'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[dsTotalizador."SALDO"]')
        end
      end
    end
  end
  object dsCaixaPorConta: TfrxDBDataset
    UserName = 'dsCaixaPorConta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NMCON=NMCON'
      'DTOPE=DTOPE'
      'DESCRI=DESCRI'
      'ENTRADA=ENTRADA'
      'SAIDA=SAIDA'
      'NEUTRO=NEUTRO'
      'SALDO=SALDO')
    DataSet = sqlCaixaPorConta
    BCDToCurrency = False
    Left = 48
    Top = 200
  end
  object sqlCaixaPorConta: TSQLQuery
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
    Top = 200
    object StringField1: TStringField
      FieldName = 'NMCON'
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'DTOPE'
    end
    object StringField2: TStringField
      FieldName = 'DESCRI'
      Size = 80
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'NEUTRO'
      Precision = 18
      Size = 2
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object dsTotalizador: TfrxDBDataset
    UserName = 'dsTotalizador'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SALDO=SALDO')
    DataSet = sqlTotalizador
    BCDToCurrency = False
    Left = 360
    Top = 24
  end
  object sqlTotalizador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sum(a.valor) as Saldo from fimov a'
      'inner join ficon c on c.cdcon = a.cdcon'
      'inner join figru g on g.cdgru = c.cdgru')
    SQLConnection = DM.Banco
    Left = 320
    Top = 24
    object sqlTotalizadorSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
end
