object FormDetailTransaksi: TFormDetailTransaksi
  Left = 637
  Top = 218
  Width = 699
  Height = 524
  Caption = 'FormDetailTransaksi'
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
    Left = 24
    Top = 27
    Width = 59
    Height = 13
    Caption = 'ID Transaksi'
  end
  object lbl2: TLabel
    Left = 23
    Top = 56
    Width = 48
    Height = 13
    Caption = 'ID Sepatu'
  end
  object lbl3: TLabel
    Left = 22
    Top = 86
    Width = 33
    Height = 13
    Caption = 'Jumlah'
  end
  object lbl4: TLabel
    Left = 23
    Top = 118
    Width = 66
    Height = 13
    Caption = 'Harga Satuan'
  end
  object lbl5: TLabel
    Left = 23
    Top = 153
    Width = 40
    Height = 13
    Caption = 'Subtotal'
  end
  object Edtidtransaksi: TEdit
    Left = 112
    Top = 30
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtidsepatu: TEdit
    Left = 112
    Top = 57
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edtjumlah: TEdit
    Left = 113
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edthargasatuan: TEdit
    Left = 113
    Top = 118
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edtsubtotal: TEdit
    Left = 113
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object bbaru: TButton
    Left = 24
    Top = 194
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 112
    Top = 194
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 200
    Top = 194
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = beditClick
  end
  object bhapus: TButton
    Left = 285
    Top = 196
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = bhapusClick
  end
  object bbatal: TButton
    Left = 376
    Top = 194
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = bbatalClick
  end
  object breport: TButton
    Left = 463
    Top = 194
    Width = 75
    Height = 25
    Caption = 'REPORT'
    TabOrder = 10
    OnClick = breportClick
  end
  object dbgrd1: TDBGrid
    Left = 26
    Top = 238
    Width = 555
    Height = 129
    DataSource = dsdetailtransaksi
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_detail_transaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_transaksi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_sepatu'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_satuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subtotal'
        Visible = True
      end>
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
    Left = 26
    Top = 382
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select* from tabel_detail_transaksi')
    Params = <>
    Left = 82
    Top = 382
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 242
    Top = 382
  end
  object dsdetailtransaksi: TDataSource
    DataSet = zqry1
    Left = 138
    Top = 382
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
    ReportOptions.LastChange = 45261.815451099540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 193
    Top = 385
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
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA TRANSAKSI')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 86.929190000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Left = 86.929190000000000000
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
          Left = 129.327283960000000000
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
          Left = 209.745204460000000000
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
            'ID TRANSAKSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 397.786177230000000000
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
            'ID SEPATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 521.575140000000000000
          Top = 15.118120000000000000
          Width = 146.466142770000000000
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
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 668.976810000000000000
          Top = 15.118120000000000000
          Width = 146.466142770000000000
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
            'HARGA SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 816.378480000000000000
          Top = 15.118120000000000000
          Width = 146.466142770000000000
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
            'SUBTOTAL')
          ParentFont = False
          VAlign = vaCenter
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
          Left = 86.929190000000000000
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
          Left = 128.504020000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_detail_transaksi'
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
            '[frxDBDataset1."id_detail_transaksi"]')
          ParentFont = False
        end
        object frxDBDataset1tanggal_transaksi: TfrxMemoView
          Left = 211.653680000000000000
          Width = 185.196970000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_transaksi'
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
            '[frxDBDataset1."id_transaksi"]')
          ParentFont = False
        end
        object frxDBDataset1id_pelanggan: TfrxMemoView
          Left = 396.850650000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'id_sepatu'
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
            '[frxDBDataset1."id_sepatu"]')
          ParentFont = False
        end
        object frxDBDataset1total_harga: TfrxMemoView
          Left = 521.575140000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'jumlah'
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
            '[frxDBDataset1."jumlah"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 668.976810000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'harga_satuan'
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
            '[frxDBDataset1."harga_satuan"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 816.378480000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'subtotal'
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
            '[frxDBDataset1."subtotal"]')
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
end
