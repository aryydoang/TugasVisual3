unit Penjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, DB, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ComCtrls, Grids, DBGrids,
  StdCtrls;

type
  TFormPembelian = class(TForm)
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
    dtp1: TDateTimePicker;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    frxdbdtst1: TfrxDBDataset;
    dssupplier: TDataSource;
    frxrprt1: TfrxReport;
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
  FormPembelian: TFormPembelian;
  id_pembelian: string;
implementation

{$R *.dfm}

procedure TFormPembelian.edtbersih;
begin
Edttotalharga.Clear;
end;

procedure TFormPembelian.edtenable;
begin
dtp1.Enabled:= True;
Edttotalharga.Enabled:= True;
end;

procedure TFormPembelian.posisiawal;
begin
edtbersih;
dtp1.Enabled:= True;
Edttotalharga.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormPembelian.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormPembelian.bsimpanClick(Sender: TObject);
begin
if (Edttotalharga.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_pembelian values (null,"'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'","'+cbb1.Text+'","'+Edttotalharga.Text+'")');
  zqry1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_pembelian');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;
end;

procedure TFormPembelian.beditClick(Sender: TObject);
begin
if (Edttotalharga.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edttotalharga.Text = zqry1.FieldList[3].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_pembelian:=dbgrd1.DataSource.DataSet.FieldByName('id_pembelian').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_pembelian set tanggal_pembelian="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", id_supplier="'+cbb1.Text+'", total_harga_pembelian="'+Edttotalharga.Text+'" where id_pembelian="'+id_pembelian+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_pembelian');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TFormPembelian.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_pembelian:=dbgrd1.DataSource.DataSet.FieldByName('id_pembelian').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_pembelian where id_pembelian="'+id_pembelian+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pembelian');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormPembelian.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPembelian.breportClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TFormPembelian.FormShow(Sender: TObject);
begin
posisiawal;

// Menampilkan id supplier ke dalam ComboBox
cbb1.Items.Clear;
zqry2.SQL.Clear;
zqry2.SQL.Add('SELECT id_supplier FROM tabel_supplier');
zqry2.Open;

while not zqry2.Eof do
begin
  cbb1.Items.Add(zqry2.FieldByName('id_supplier').AsString);
  zqry2.Next;
end;

zqry2.Close;


// Menampilkan data dari tabel pembelian
zqry1.SQL.Clear;
zqry1.SQL.Add('SELECT * FROM tabel_pembelian');
zqry1.Open;

// Menghubungkan tabel peminjaman dengan DataSource
dssupplier.DataSet := zqry1;
dbgrd1.DataSource := dssupplier;


end;

procedure TFormPembelian.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

dtp1.Date := StrToDate(zqry1.FieldList[1].AsString);
cbb1.Text := zqry1.FieldList[2].AsString;
Edttotalharga.Text:= zqry1.FieldList[3].AsString;
end;

end.
