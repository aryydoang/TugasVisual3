unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFormMenu = class(TForm)
    mm1: TMainMenu;
    MENU1: TMenuItem;
    KARYAWAN1: TMenuItem;
    lbl1: TLabel;
    PELANGGAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    SEPATU1: TMenuItem;
    DETAILTRANSAKSI1: TMenuItem;
    DETAILPEMBELIAN1: TMenuItem;
    procedure KARYAWAN1Click(Sender: TObject);
    procedure PELANGGAN1Click(Sender: TObject);
    procedure SUPPLIER1Click(Sender: TObject);
    procedure RANSAKSI1Click(Sender: TObject);
    procedure PEMBELIAN1Click(Sender: TObject);
    procedure SEPATU1Click(Sender: TObject);
    procedure DETAILTRANSAKSI1Click(Sender: TObject);
    procedure DETAILPEMBELIAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses Karyawan, Pelanggan, Supplier, Transaksi, Penjualan, Sepatu, DetailTransaksi, DetailPembelian;
{$R *.dfm}

procedure TFormMenu.KARYAWAN1Click(Sender: TObject);
begin
  FormKaryawan.ShowModal;
end;

procedure TFormMenu.PELANGGAN1Click(Sender: TObject);
begin
  FormPelanggan.ShowModal;
end;

procedure TFormMenu.SUPPLIER1Click(Sender: TObject);
begin
  FormSupplier.ShowModal;
end;

procedure TFormMenu.RANSAKSI1Click(Sender: TObject);
begin
   FormTransaksi.ShowModal;
end;

procedure TFormMenu.PEMBELIAN1Click(Sender: TObject);
begin
   FormPembelian.ShowModal;
end;

procedure TFormMenu.SEPATU1Click(Sender: TObject);
begin
  FormSepatu.ShowModal;
end;

procedure TFormMenu.DETAILTRANSAKSI1Click(Sender: TObject);
begin
  FormDetailTransaksi.ShowModal;
end;

procedure TFormMenu.DETAILPEMBELIAN1Click(Sender: TObject);
begin
  FormDetailPembelian.ShowModal;
end;

end.
