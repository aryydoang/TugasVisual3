object FormMenu: TFormMenu
  Left = 397
  Top = 213
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
    Left = 17
    Top = 17
    object MENU1: TMenuItem
      Caption = 'MENU'
      object KARYAWAN1: TMenuItem
        Caption = 'KARYAWAN'
        OnClick = KARYAWAN1Click
      end
      object PELANGGAN1: TMenuItem
        Caption = 'PELANGGAN'
        OnClick = PELANGGAN1Click
      end
      object SUPPLIER1: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = SUPPLIER1Click
      end
      object RANSAKSI1: TMenuItem
        Caption = 'TRANSAKSI'
        OnClick = RANSAKSI1Click
      end
      object PEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
        OnClick = PEMBELIAN1Click
      end
      object SEPATU1: TMenuItem
        Caption = 'SEPATU'
        OnClick = SEPATU1Click
      end
      object DETAILTRANSAKSI1: TMenuItem
        Caption = 'DETAIL TRANSAKSI'
        OnClick = DETAILTRANSAKSI1Click
      end
      object DETAILPEMBELIAN1: TMenuItem
        Caption = 'DETAIL PEMBELIAN'
        OnClick = DETAILPEMBELIAN1Click
      end
    end
  end
end
