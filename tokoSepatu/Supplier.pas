unit Supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, frxClass, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TFormSupplier = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edtnama: TEdit;
    Edtalamat: TEdit;
    Edtnotelepon: TEdit;
    Edtemail: TEdit;
    Edtkontak: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    breport: TButton;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    zqry1: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    dssupplier: TDataSource;
    frxReport1: TfrxReport;
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
  FormSupplier: TFormSupplier;
   id_supplier: String;
implementation

{$R *.dfm}

procedure TFormSupplier.edtbersih;
begin
Edtnama.Clear;
Edtalamat.Clear;
Edtnotelepon.Clear;
Edtemail.Clear;
Edtkontak.Clear;
end;

procedure TFormSupplier.edtenable;
begin
Edtnama.Enabled:= True;
Edtalamat.Enabled:= True;
Edtnotelepon.Enabled:= True;
Edtemail.Enabled:= True;
Edtkontak.Enabled:= True;
end;

procedure TFormSupplier.posisiawal;
begin
edtbersih;
Edtnama.Enabled:= False;
Edtalamat.Enabled:= False;
Edtnotelepon.Enabled:= False;
Edtemail.Enabled:= False;
Edtkontak.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;
end;

procedure TFormSupplier.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSupplier.bbatalClick(Sender: TObject);
begin
posisiawal;
end;

procedure TFormSupplier.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;
end;

procedure TFormSupplier.bsimpanClick(Sender: TObject);
begin
 if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') or (Edtkontak.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into tabel_supplier values (null,"'+Edtnama.Text+'","'+Edtalamat.Text+'","'+Edtnotelepon.Text+'","'+Edtemail.Text+'","'+Edtkontak.Text+'")');
  zqry1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_supplier');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  posisiawal;

  end;
end;

procedure TFormSupplier.dbgrd1CellClick(Column: TColumn);
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
Edtkontak.Text:= zqry1.FieldList[5].AsString;
end;

procedure TFormSupplier.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id_supplier:=dbgrd1.DataSource.DataSet.FieldByName('id_supplier').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_supplier where id_supplier="'+id_supplier+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_supplier');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;

end;
end;

procedure TFormSupplier.beditClick(Sender: TObject);
begin
if (Edtnama.Text='') or (Edtalamat.Text='') or (Edtnotelepon.Text='') or (Edtemail.Text='') or (Edtkontak.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnama.Text = zqry1.FieldList[1].AsString) and (Edtalamat.Text = zqry1.FieldList[2].AsString) AND (Edtnotelepon.Text = zqry1.FieldList[3].AsString) and (Edtemail.Text = zqry1.FieldList[4].AsString) AND (Edtkontak.Text = zqry1.FieldList[5].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else
  begin
    id_supplier:=dbgrd1.DataSource.DataSet.FieldByName('id_supplier').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  zqry1.SQL.Clear;
  zqry1.SQL.Add('Update tabel_supplier set nama_supplier="'+Edtnama.Text+'", alamat="'+Edtalamat.Text+'", nomor_telepon="'+Edtnotelepon.Text+'", email="'+Edtemail.Text+'", nama_kontak="'+Edtkontak.Text+'" where id_supplier="'+id_supplier+'"');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select*from tabel_supplier');
  zqry1.Open;
  posisiawal;
  end;
end;

procedure TFormSupplier.breportClick(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
