unit Transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, frxClass, DB, frxDBSet, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids, StdCtrls;

type
  TFormTransaksi = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Edttotalharga: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    breport: TButton;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    dstransaksi: TDataSource;
    frxrprt1: TfrxReport;
    dtp1: TDateTimePicker;
    zqry2: TZQuery;
    cbb1: TComboBox;
    procedure edtbersih;
    procedure edtenable;
    procedure posisiawal;
    procedure bbaruClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure bhapusClick(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure breportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransaksi: TFormTransaksi;
   id_transaksi: String;
implementation

{$R *.dfm}

procedure TFormTransaksi.edtbersih;
begin
Edttotalharga.Clear;
end;

procedure TFormTransaksi.edtenable;
begin
dtp1.Enabled:= True;
cbb1.Enabled:= True;
Edttotalharga.Enabled:= True;
end;

procedure TFormTransaksi.posisiawal;
begin
edtbersih;
dtp1.Enabled:= True;
cbb1.Enabled:= False;
Edttotalharga.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormTransaksi.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormTransaksi.bsimpanClick(Sender: TObject);
begin
if(Edttotalharga.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_transaksi values (null,"'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+cbb1.Text+'","'+Edttotalharga.Text+'")');
  zqry1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_transaksi');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;
end;

procedure TFormTransaksi.beditClick(Sender: TObject);
begin
if (Edttotalharga.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (cbb1.Text = zqry1.FieldList[2].AsString) and (Edttotalharga.Text = zqry1.FieldList[3].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_transaksi:=dbgrd1.DataSource.DataSet.FieldByName('id_transaksi').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_transaksi set tanggal_transaksi="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", id_pelanggan="'+cbb1.Text+'", total_harga="'+Edttotalharga.Text+'" where id_transaksi="'+id_transaksi+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_transaksi');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TFormTransaksi.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_transaksi:=dbgrd1.DataSource.DataSet.FieldByName('id_transaksi').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_transaksi where id_transaksi="'+id_transaksi+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormTransaksi.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormTransaksi.breportClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TFormTransaksi.FormShow(Sender: TObject);
begin
// Menampilkan id_pelanggan ke dalam ComboBox
cbb1.Items.Clear;
zqry2.SQL.Clear;
zqry2.SQL.Add('SELECT id_pelanggan FROM tabel_pelanggan');
zqry2.Open;

while not zqry2.Eof do
begin
  cbb1.Items.Add(zqry2.FieldByName('id_pelanggan').AsString);
  zqry2.Next;
end;

zqry2.Close;


// Menampilkan data dari tabel transaksi
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM tabel_transaksi');
zqry1.Open;

// Menghubungkan tabel transaksi dengan DataSource
dstransaksi.DataSet := zqry1;
dbgrd1.DataSource := dstransaksi;
posisiawal;
end;

procedure TFormTransaksi.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

dtp1.Date := StrToDate(zqry1.FieldList[1].AsString);
cbb1.Text:= zqry1.FieldList[2].AsString;
Edttotalharga.Text:= zqry1.FieldList[3].AsString;


end;

end.
