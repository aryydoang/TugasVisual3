unit Karyawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ComCtrls, Grids, DBGrids,
  StdCtrls;

type
  TFormKaryawan = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edtnama: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    dbgrd1: TDBGrid;
    bbatal: TButton;
    bprint: TButton;
    Edtjabatan: TEdit;
    Edtgaji: TEdit;
    Edtnotelepon: TEdit;
    dtp1: TDateTimePicker;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    frxDBDatasetDenda: TfrxDBDataset;
    frxReport1: TfrxReport;
    dsdenda: TDataSource;
    lbl6: TLabel;
    Edtemail: TEdit;
    lbl7: TLabel;
    Edtalamat: TEdit;
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
  FormKaryawan: TFormKaryawan;
  id: string;

implementation

{$R *.dfm}

procedure TFormKaryawan.edtbersih;
begin
Edtnama.Clear;
Edtalamat.Clear;
Edtnotelepon.Clear;
Edtemail.Clear;
Edtjabatan.Clear;
Edtgaji.Clear;
end;

procedure TFormKaryawan.edtenable;
begin
Edtnama.Enabled:= True;
Edtalamat.Enabled:= True;
Edtnotelepon.Enabled:= True;
Edtemail.Enabled:= True;
Edtjabatan.Enabled:= True;
Edtgaji.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TFormKaryawan.posisiawal;
begin
edtbersih;
Edtnama.Enabled:= False;
Edtalamat.Enabled:= False;
Edtnotelepon.Enabled:= False;
Edtemail.Enabled:= False;
Edtjabatan.Enabled:= False;
Edtgaji.Enabled:= False;
dtp1.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormKaryawan.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormKaryawan.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormKaryawan.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormKaryawan.bsimpanClick(Sender: TObject);
begin
 if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') or (Edtjabatan.Text='') or (Edtgaji.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_karyawan values (null,"'+Edtnama.Text+'","'+Edtalamat.Text+'","'+Edtnotelepon.Text+'","'+Edtemail.Text+'","'+Edtjabatan.Text+'","'+Edtgaji.Text+'","'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'")');
  zqry1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_karyawan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;

end;

procedure TFormKaryawan.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnama.Text:= zqry1.FieldList[1].AsString;
Edtalamat.Text:= zqry1.FieldList[2].AsString;
Edtnotelepon.Text:= zqry1.FieldList[3].AsString;
Edtemail.Text:= zqry1.FieldList[4].AsString;
Edtjabatan.Text:= zqry1.FieldList[5].AsString;
Edtgaji.Text:= zqry1.FieldList[6].AsString;
dtp1.Date := StrToDate(zqry1.FieldList[7].AsString);
end;

procedure TFormKaryawan.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_karyawan where id="'+id+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_karyawan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;

end;

procedure TFormKaryawan.beditClick(Sender: TObject);
begin
  if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') or (Edtjabatan.Text='') or (Edtgaji.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnama.Text = zqry1.FieldList[1].AsString) and (Edtalamat.Text = zqry1.FieldList[2].AsString) AND (Edtnotelepon.Text = zqry1.FieldList[3].AsString) and (Edtemail.Text = zqry1.FieldList[4].AsString) AND (Edtjabatan.Text = zqry1.FieldList[5].AsString) and (Edtgaji.Text = zqry1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_karyawan set nama_karyawan="'+Edtnama.Text+'", alamat="'+Edtalamat.Text+'", no_telepon="'+Edtnotelepon.Text+'", email="'+Edtemail.Text+'", jabatan="'+Edtjabatan.Text+'", tanggal_bergabung="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", gaji="'+Edtgaji.Text+'" where id="'+id+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_karyawan');
  zqry1.Open;
  posisiawal;
  end;

end;

procedure TFormKaryawan.bprintClick(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
