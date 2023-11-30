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
    procedure KARYAWAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses Karyawan;
{$R *.dfm}

procedure TFormMenu.KARYAWAN1Click(Sender: TObject);
begin
  FormKaryawan.ShowModal;
end;

end.
