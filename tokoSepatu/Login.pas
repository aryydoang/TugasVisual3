unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection;

type
  TFormLogin = class(TForm)
    shp1: TShape;
    shp2: TShape;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    Edtuser: TEdit;
    Edtpass: TEdit;
    b1: TButton;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses Menu;

{$R *.dfm}

procedure TFormLogin.b1Click(Sender: TObject);
begin
with zqry1 do
  begin
    SQL.Clear;
    SQL.Add('select * from login where username='+QuotedStr(Edtuser.Text));
    Open;
  end;
  //jika tidak ada akun muncul pesan dibawah
  if zqry1.RecordCount=0 then
  Application.MessageBox('Username anda tidak terdaftar','informasi',MB_OK or MB_ICONINFORMATION)
  else
  begin
  if zqry1.FieldByName('password').AsString<>Edtpass.Text then
  Application.MessageBox('Silahkan cek password dengan benar','error',MB_OK or MB_ICONERROR)
  else
  begin
    Hide;
    FormMenu.Show;
    MessageDlg('Selamat login berhasil',mtInformation,[mbOK],0);
  end;
  end;

end;


end.
