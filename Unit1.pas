unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tsatuan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    bt_simpan: TButton;
    bt_edit: TButton;
    bt_hapus: TButton;
    bt_batal: TButton;
    dbgrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure bt_simpanClick(Sender: TObject);
    procedure bt_editClick(Sender: TObject);
    procedure dbgrid1CellClick(Column: TColumn);
    procedure bt_hapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  satuan: Tsatuan;
  a : string;

implementation

uses U_modul;

{$R *.dfm}

procedure Tsatuan.bt_simpanClick(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into satuan values(null,"'+Edit1.Text+'","'+Edit2.Text+'")');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from satuan');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan');

end;


procedure Tsatuan.bt_editClick(Sender: TObject);
begin
with DataModule2.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('update satuan set nama="'+Edit1.Text+'", diskripsi = "'+Edit2.Text+'" where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
end;
ShowMessage('DATA BERHASIL DIUPDATE!');
end;

procedure Tsatuan.dbgrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule2.ZQuery1.Fields[1].AsString;
Edit2.Text:= DataModule2.ZQuery1.Fields[2].AsString;
a := DataModule2.ZQuery1.Fields[0].AsString;
end;

procedure Tsatuan.bt_hapusClick(Sender: TObject);
begin
with DataModule2.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
end;
ShowMessage('Data Berhasil DiDelete');
end;
end.
