program tokoSepatu;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Menu in 'Menu.pas' {FormMenu},
  Karyawan in 'Karyawan.pas' {FormKaryawan},
  Pelanggan in 'Pelanggan.pas' {FormPelanggan},
  Supplier in 'Supplier.pas' {FormSupplier},
  Sepatu in 'Sepatu.pas' {FormSepatu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormKaryawan, FormKaryawan);
  Application.CreateForm(TFormPelanggan, FormPelanggan);
  Application.CreateForm(TFormSupplier, FormSupplier);
  Application.CreateForm(TFormSepatu, FormSepatu);
  Application.Run;
end.
