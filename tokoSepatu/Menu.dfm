object FormMenu: TFormMenu
  Left = 218
  Top = 243
  Width = 1044
  Height = 540
  Caption = 'FormMenu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 160
    Width = 373
    Height = 23
    Caption = 'SELAMAT DATANG DI HALAMAN MENU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 32
    Top = 16
    object MENU1: TMenuItem
      Caption = 'MENU'
      object KARYAWAN1: TMenuItem
        Caption = 'KARYAWAN'
        OnClick = KARYAWAN1Click
      end
    end
  end
end
