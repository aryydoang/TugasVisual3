unit Sepatu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFormSepatu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edtnama: TEdit;
    Edtmerek: TEdit;
    Edtharga: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edtstok: TEdit;
    Edtdeskripsi: TEdit;
    Edtukuran: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    bprint: TButton;
    dbgrd1: TDBGrid;
    DataSource1: TDataSource;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    Edtkategori: TEdit;
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
    procedure bprintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSepatu: TFormSepatu;
  id_sepatu: string;

implementation

{$R *.dfm}

procedure TFormSepatu.edtbersih;
begin
Edtnama.Clear;
Edtmerek.Clear;
Edtkategori.Clear;
Edtharga.Clear;
Edtstok.Clear;
Edtdeskripsi.Clear;
Edtukuran.Clear;
end;

procedure TFormSepatu.edtenable;
begin
Edtnama.Enabled:= True;
Edtmerek.Enabled:= True;
Edtkategori.Enabled:= True;
Edtharga.Enabled:= True;
Edtstok.Enabled:= True;
Edtdeskripsi.Enabled:= True;
Edtukuran.Enabled:= True;
end;

procedure TFormSepatu.posisiawal;
begin
Edtnama.Enabled:= False;
Edtmerek.Enabled:= False;
Edtkategori.Enabled:= False;
Edtharga.Enabled:= False;
Edtstok.Enabled:= False;
Edtdeskripsi.Enabled:= False;
Edtukuran.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormSepatu.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSepatu.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSepatu.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormSepatu.bsimpanClick(Sender: TObject);
begin
  if (Edtnama.Text='') or (Edtmerek.Text='') or (Edtkategori.Text='') or (Edtharga.Text='') or (Edtstok.Text='')  or (Edtdeskripsi.Text='') or (Edtukuran.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_sepatu values (null,"'+Edtnama.Text+'","'+Edtmerek.Text+'","'+Edtkategori.Text+'","'+Edtharga.Text+'","'+Edtstok.Text+'","'+Edtdeskripsi.Text+'","'+Edtukuran.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_sepatu');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormSepatu.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnama.Text:= zqry1.FieldList[1].AsString;
Edtmerek.Text:= zqry1.FieldList[2].AsString;
Edtkategori.Text:= zqry1.FieldList[3].AsString;
Edtharga.Text:= zqry1.FieldList[4].AsString;
Edtstok.Text:= zqry1.FieldList[5].AsString;
Edtdeskripsi.Text:= zqry1.FieldList[6].AsString;
Edtukuran.Text:= zqry1.FieldList[7].AsString;
end;

procedure TFormSepatu.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_sepatu:=dbgrd1.DataSource.DataSet.FieldByName('id_sepatu').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_sepatu where id_sepatu="'+id_sepatu+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_sepatu');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormSepatu.beditClick(Sender: TObject);
begin
  if (Edtnama.Text='') or (Edtmerek.Text='') or (Edtkategori.Text='') or (Edtharga.Text='') or (Edtstok.Text='')  or (Edtdeskripsi.Text='') or (Edtukuran.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnama.Text = zqry1.FieldList[1].AsString) and (Edtmerek.Text = zqry1.FieldList[2].AsString) AND (Edtkategori.Text = zqry1.FieldList[3].AsString) and (Edtharga.Text = zqry1.FieldList[4].AsString) and (Edtstok.Text = zqry1.FieldList[5].AsString) AND (Edtdeskripsi.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_sepatu:=dbgrd1.DataSource.DataSet.FieldByName('id_sepatu').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_sepatu set nama_sepatu="'+Edtnama.Text+'", merek="'+Edtmerek.Text+'", kategori="'+Edtkategori.Text+'", harga="'+Edtharga.Text+'", stok="'+Edtstok.Text+'", deskripsi="'+Edtdeskripsi.Text+'", ukuran="'+Edtukuran.Text+'" where id_sepatu="'+id_sepatu+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_sepatu');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormSepatu.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
