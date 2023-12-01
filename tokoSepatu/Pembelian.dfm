object FormSupplier: TFormSupplier
  Left = 338
  Top = 203
  Width = 618
  Height = 480
  Caption = 'FormSupplier'
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
    Left = 48
    Top = 40
    Width = 69
    Height = 13
    Caption = 'Nama Supplier'
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Alamat'
  end
  object Label3: TLabel
    Left = 48
    Top = 104
    Width = 73
    Height = 13
    Caption = 'Nomor Telepon'
  end
  object Label4: TLabel
    Left = 296
    Top = 40
    Width = 25
    Height = 13
    Caption = 'Email'
  end
  object Label5: TLabel
    Left = 296
    Top = 72
    Width = 65
    Height = 13
    Caption = 'Nama Kontak'
  end
  object Edit1: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 376
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 376
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 48
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 136
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
  end
  object Button3: TButton
    Left = 224
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 7
  end
  object Button4: TButton
    Left = 312
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 8
  end
  object Button5: TButton
    Left = 400
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 9
  end
  object Button6: TButton
    Left = 488
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 25
    Top = 200
    Width = 568
    Height = 129
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_supplier'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_telepon'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_kontak'
        Width = 100
        Visible = True
      end>
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'toko_sepatu'
    Protocol = 'mysql'
    LibraryLocation = 'D:\joki\tokoSepatu\tokoSepatu\libmysql.dll'
    Left = 48
    Top = 368
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 104
    Top = 368
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.002856585650000000
    ReportOptions.LastChange = 45261.002856585650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 368
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 264
    Top = 368
  end
  object DataSource1: TDataSource
    Left = 160
    Top = 368
  end
end
