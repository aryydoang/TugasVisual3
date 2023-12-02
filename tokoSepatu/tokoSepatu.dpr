program tokoSepatu;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Menu in 'Menu.pas' {FormMenu},
  Karyawan in 'Karyawan.pas' {FormKaryawan},
  Pelanggan in 'Pelanggan.pas' {FormPelanggan},
  Supplier in 'Supplier.pas' {FormSupplier},
  Sepatu in 'Sepatu.pas' {FormSepatu},
  Transaksi in 'Transaksi.pas' {FormTransaksi},
  Penjualan in 'Penjualan.pas' {FormPembelian},
  DetailTransaksi in 'DetailTransaksi.pas' {FormDetailTransaksi},
  DetailPembelian in 'DetailPembelian.pas' {FormDetailPembelian};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormKaryawan, FormKaryawan);
  Application.CreateForm(TFormPelanggan, FormPelanggan);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TFormSepatu, FormSepatu);
  Application.CreateForm(TFormTransaksi, FormTransaksi);
  Application.CreateForm(TFormPembelian, FormPembelian);
  Application.CreateForm(TFormDetailTransaksi, FormDetailTransaksi);
  Application.CreateForm(TFormDetailPembelian, FormDetailPembelian);
  Application.Run;
end.
