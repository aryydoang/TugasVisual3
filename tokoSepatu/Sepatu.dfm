object FormSepatu: TFormSepatu
  Left = 321
  Top = 201
  Width = 928
  Height = 480
  Caption = 'FormSepatu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 65
    Height = 13
    Caption = 'Nama Seoatu'
  end
  object Label2: TLabel
    Left = 80
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Merek'
  end
  object Label3: TLabel
    Left = 80
    Top = 104
    Width = 39
    Height = 13
    Caption = 'Kategori'
  end
  object Label4: TLabel
    Left = 80
    Top = 136
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object Label5: TLabel
    Left = 328
    Top = 40
    Width = 22
    Height = 13
    Caption = 'Stok'
  end
  object Label6: TLabel
    Left = 328
    Top = 72
    Width = 43
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label7: TLabel
    Left = 328
    Top = 104
    Width = 35
    Height = 13
    Caption = 'Ukuran'
  end
  object Editnama: TEdit
    Left = 160
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtmerek: TEdit
    Left = 160
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edtharga: TEdit
    Left = 160
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edtstok: TEdit
    Left = 392
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edtdeskripsi: TEdit
    Left = 392
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edtukuran: TEdit
    Left = 392
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object bbaru: TButton
    Left = 80
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
  end
  object bsimpan: TButton
    Left = 168
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
  end
  object bedit: TButton
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
  end
  object bhapus: TButton
    Left = 344
    Top = 184
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
  end
  object bbatal: TButton
    Left = 432
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
  end
  object bprint: TButton
    Left = 520
    Top = 184
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 11
  end
  object dbgrd1: TDBGrid
    Left = 83
    Top = 231
    Width = 710
    Height = 181
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_sepatu'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_sepatu'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merek'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kategori'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deskripsi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ukuran'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 104
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Text = 'ComboBox1'
  end
  object DataSource1: TDataSource
    Left = 640
    Top = 48
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
    Left = 536
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from tabel_sepatu')
    Params = <>
    Left = 592
    Top = 56
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.258179745370000000
    ReportOptions.LastChange = 45261.258179745370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 696
    Top = 56
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 752
    Top = 64
  end
end
