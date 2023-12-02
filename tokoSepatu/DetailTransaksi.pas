unit DetailTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, DB, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TFormDetailTransaksi = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edtidtransaksi: TEdit;
    Edtidsepatu: TEdit;
    Edtjumlah: TEdit;
    Edthargasatuan: TEdit;
    Edtsubtotal: TEdit;
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
    dsdetailtransaksi: TDataSource;
    frxrprt1: TfrxReport;
    procedure edtbersih;
    procedure edtenable;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bhapusClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure breportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetailTransaksi: TFormDetailTransaksi;
  id_detail_transaksi: string;

implementation

{$R *.dfm}

{ TFormDetailTransaksi }

procedure TFormDetailTransaksi.edtbersih;
begin
Edtidtransaksi.Clear;
Edtidsepatu.Clear;
Edtjumlah.Clear;
Edthargasatuan.Clear;
Edtsubtotal.Clear;
end;

procedure TFormDetailTransaksi.edtenable;
begin
Edtidtransaksi.Enabled:= True;
Edtidsepatu.Enabled:= True;
Edtjumlah.Enabled:= True;
Edthargasatuan.Enabled:= True;
Edtsubtotal.Enabled:= True;
end;

procedure TFormDetailTransaksi.posisiawal;
begin
edtbersih;
Edtidtransaksi.Enabled:= False;
Edtidsepatu.Enabled:= False;
Edtjumlah.Enabled:= False;
Edthargasatuan.Enabled:= False;
Edtsubtotal.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormDetailTransaksi.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormDetailTransaksi.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormDetailTransaksi.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormDetailTransaksi.bsimpanClick(Sender: TObject);
begin
  if (Edtidtransaksi.Text='') or (Edtidsepatu.Text='') or (Edtjumlah.Text='') or (Edthargasatuan.Text='') or (Edtsubtotal.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_detail_transaksi values (null,"'+Edtidtransaksi.Text+'","'+Edtidsepatu.Text+'","'+Edtjumlah.Text+'","'+Edthargasatuan.Text+'","'+Edtsubtotal.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_detail_transaksi');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;
end;

procedure TFormDetailTransaksi.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtidtransaksi.Text:= zqry1.FieldList[1].AsString;
Edtidsepatu.Text := zqry1.FieldList[2].AsString;
Edtjumlah.Text:= zqry1.FieldList[3].AsString;
Edthargasatuan.Text:= zqry1.FieldList[4].AsString;
Edtsubtotal.Text:= zqry1.FieldList[5].AsString;

end;

procedure TFormDetailTransaksi.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_detail_transaksi:=dbgrd1.DataSource.DataSet.FieldByName('id_detail_transaksi').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_detail_transaksi where id_detail_transaksi="'+id_detail_transaksi+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_detail_transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormDetailTransaksi.beditClick(Sender: TObject);
begin
if (Edtidtransaksi.Text='') or (Edtidsepatu.Text='') or (Edtjumlah.Text='') or (Edthargasatuan.Text='') or (Edtsubtotal.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtidtransaksi.Text = zqry1.FieldList[1].AsString) and (Edtidsepatu.Text = zqry1.FieldList[2].AsString) AND (Edtjumlah.Text = zqry1.FieldList[3].AsString) and (Edthargasatuan.Text = zqry1.FieldList[4].AsString) and (Edtsubtotal.Text = zqry1.FieldList[5].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_detail_transaksi:=dbgrd1.DataSource.DataSet.FieldByName('id_detail_transaksi').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_detail_transaksi set id_transaksi="'+Edtidtransaksi.Text+'", id_sepatu="'+Edtidsepatu.Text+'", jumlah="'+Edtjumlah.Text+'", harga_satuan="'+Edthargasatuan.Text+'", subtotal="'+Edtsubtotal.Text+'" where id_detail_transaksi="'+id_detail_transaksi+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_detail_transaksi');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormDetailTransaksi.breportClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
