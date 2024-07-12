program fiture_satuan;

uses
  Forms,
  Unit1 in 'Unit1.pas' {satuan},
  U_modul in 'U_modul.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tsatuan, satuan);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
