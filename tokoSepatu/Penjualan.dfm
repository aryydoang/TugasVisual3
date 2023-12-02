object FormPembelian: TFormPembelian
  Left = 269
  Top = 232
  Width = 604
  Height = 460
  Caption = 'FormPembelian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 40
    Width = 89
    Height = 13
    Caption = 'Tanggal Pembelian'
  end
  object lbl2: TLabel
    Left = 48
    Top = 72
    Width = 52
    Height = 13
    Caption = 'ID Supplier'
  end
  object lbl3: TLabel
    Left = 48
    Top = 104
    Width = 107
    Height = 13
    Caption = 'Total Harga Pembelian'
  end
  object Edttotalharga: TEdit
    Left = 161
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bbaru: TButton
    Left = 48
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 1
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 224
    Top = 160
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = beditClick
  end
  object bhapus: TButton
    Left = 309
    Top = 162
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = bhapusClick
  end
  object bbatal: TButton
    Left = 400
    Top = 160
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = bbatalClick
  end
  object breport: TButton
    Left = 487
    Top = 160
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 6
    OnClick = breportClick
  end
  object dbgrd1: TDBGrid
    Left = 25
    Top = 200
    Width = 381
    Height = 129
    DataSource = dssupplier
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pembelian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_pembelian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_harga_pembelian'
        Visible = True
      end>
  end
  object dtp1: TDateTimePicker
    Left = 162
    Top = 39
    Width = 186
    Height = 21
    Date = 45261.423214571760000000
    Time = 45261.423214571760000000
    TabOrder = 8
  end
  object cbb1: TComboBox
    Left = 162
    Top = 71
    Width = 186
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'toko_sepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Fety Fatimah\Documents\tokoSepatu\libmysql.dll'
    Left = 48
    Top = 368
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select* from tabel_pembelian')
    Params = <>
    Left = 104
    Top = 368
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 264
    Top = 368
  end
  object dssupplier: TDataSource
    DataSet = zqry1
    Left = 160
    Top = 368
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.647033055600000000
    ReportOptions.LastChange = 45261.850203437500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 215
    Top = 371
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 393.071120000000000000
          Top = 18.897650000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA PEMBELIAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 234.330860000000000000
          Top = 15.118120000000000000
          Width = 42.398093960000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 276.728953960000000000
          Top = 15.118120000000000000
          Width = 80.417920500000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 357.146874460000000000
          Top = 15.118120000000000000
          Width = 188.040972770000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL PEMBELIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 545.187847230000000000
          Top = 15.118120000000000000
          Width = 123.788962770000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SUPPLIER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 668.976810000000000000
          Top = 15.118120000000000000
          Width = 237.174862770000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL HARGA PEMBELIAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 234.330860000000000000
          Width = 42.398093960000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1id_transaksi: TfrxMemoView
          Left = 275.905690000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_pembelian"]')
          ParentFont = False
        end
        object frxDBDataset1tanggal_transaksi: TfrxMemoView
          Left = 359.055350000000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'tanggal_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_pembelian"]')
          ParentFont = False
        end
        object frxDBDataset1id_pelanggan: TfrxMemoView
          Left = 544.252320000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_supplier'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_supplier"]')
          ParentFont = False
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 668.976810000000000000
          Width = 238.110390000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'total_harga_pembelian'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_harga_pembelian"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 41.574830000000000000
        Top = 238.110390000000000000
        Width = 1046.929810000000000000
      end
    end
  end
  object zqry2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_supplier')
    Params = <>
    Left = 317
    Top = 369
  end
end
