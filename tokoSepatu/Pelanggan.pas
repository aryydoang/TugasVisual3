unit Pelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TFormPelanggan = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    Edtnama: TEdit;
    Edtalamat: TEdit;
    Edtnotelepon: TEdit;
    Edtemail: TEdit;
    dtp1: TDateTimePicker;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    bprint: TButton;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    dspelanggan: TDataSource;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure edtbersih;
    procedure edtenable;
    procedure posisiawal;
    procedure bbatalClick(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bhapusClick(Sender: TObject);
    procedure bprintClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPelanggan: TFormPelanggan;
  id_pelanggan: string;

implementation

{$R *.dfm}

procedure TFormPelanggan.edtbersih;
begin
Edtnama.Clear;
Edtalamat.Clear;
Edtnotelepon.Clear;
Edtemail.Clear;
end;

procedure TFormPelanggan.edtenable;
begin
Edtnama.Enabled:= True;
Edtalamat.Enabled:= True;
Edtnotelepon.Enabled:= True;
Edtemail.Enabled:= True;
dtp1.Enabled:= True;
end;

procedure TFormPelanggan.posisiawal;
begin
edtbersih;
Edtnama.Enabled:= False;
Edtalamat.Enabled:= False;
Edtnotelepon.Enabled:= False;
Edtemail.Enabled:= False;
dtp1.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormPelanggan.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPelanggan.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormPelanggan.bsimpanClick(Sender: TObject);
begin
if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_pelanggan values (null,"'+Edtnama.Text+'","'+Edtalamat.Text+'","'+Edtnotelepon.Text+'","'+Edtemail.Text+'","'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'")');
  zqry1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_pelanggan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;
end;

procedure TFormPelanggan.beditClick(Sender: TObject);
begin
if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnama.Text = zqry1.FieldList[1].AsString) and (Edtalamat.Text = zqry1.FieldList[2].AsString) AND (Edtnotelepon.Text = zqry1.FieldList[3].AsString) and (Edtemail.Text = zqry1.FieldList[4].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_pelanggan:=dbgrd1.DataSource.DataSet.FieldByName('id_pelanggan').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_pelanggan set nama_pelanggan="'+Edtnama.Text+'", alamat="'+Edtalamat.Text+'", nomor_telepon="'+Edtnotelepon.Text+'", email="'+Edtemail.Text+'", tanggal_bergabung="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'" where id_pelanggan="'+id_pelanggan+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_pelanggan');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TFormPelanggan.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPelanggan.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_pelanggan:=dbgrd1.DataSource.DataSet.FieldByName('id_pelanggan').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_pelanggan where id_pelanggan="'+id_pelanggan+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_pelanggan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormPelanggan.bprintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TFormPelanggan.dbgrd1CellClick(Column: TColumn);
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
dtp1.Date := StrToDate(zqry1.FieldList[5].AsString);
end;

end.
