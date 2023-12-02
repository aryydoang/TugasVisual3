object FormLogin: TFormLogin
  Left = 483
  Top = 193
  Width = 393
  Height = 521
  Caption = 'FormLogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object shp1: TShape
    Left = 8
    Top = 8
    Width = 361
    Height = 441
    Brush.Color = clSkyBlue
  end
  object shp2: TShape
    Left = 8
    Top = 8
    Width = 361
    Height = 65
    Brush.Color = clSilver
  end
  object lbl1: TLabel
    Left = 64
    Top = 16
    Width = 269
    Height = 18
    Caption = 'SELAMAT DATANG DI TOKO SEPATU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl2: TLabel
    Left = 128
    Top = 40
    Width = 134
    Height = 18
    Caption = 'SILAHKAN LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl3: TLabel
    Left = 96
    Top = 96
    Width = 77
    Height = 18
    Caption = 'Username :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl4: TLabel
    Left = 96
    Top = 200
    Width = 71
    Height = 18
    Caption = 'Password :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Edtuser: TEdit
    Left = 96
    Top = 128
    Width = 177
    Height = 21
    TabOrder = 0
    Text = 'admin'
  end
  object Edtpass: TEdit
    Left = 96
    Top = 224
    Width = 177
    Height = 21
    TabOrder = 1
    Text = 'admin'
  end
  object b1: TButton
    Left = 216
    Top = 280
    Width = 105
    Height = 33
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = b1Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'toko_sepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Fety Fatimah\Documents\tokoSepatu\libmysql.dll'
    Left = 140
    Top = 453
  end
  object zqry1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select*from login')
    Params = <>
    Left = 40
    Top = 456
  end
end
