program frmLogin_p;

uses
  Vcl.Forms,
  frmLogin_u in 'frmLogin_u.pas' {frmLogin},
  frmRemove_u in 'frmRemove_u.pas' {frmRemove},
  frmEdit_u in 'frmEdit_u.pas' {frmEdit},
  frmGet_u in 'frmGet_u.pas' {Form1},
  dmDatabase_u in 'dmDatabase_u.pas' {dmDatabase: TDataModule},
  frmAdd_u in 'frmAdd_u.pas' {frmAdd},
  clsADD_u in 'clsADD_u.pas',
  frmFinal_u in 'frmFinal_u.pas' {frmFinal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmRemove, frmRemove);
  Application.CreateForm(TfrmEdit, frmEdit);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfrmAdd, frmAdd);
  Application.CreateForm(TfrmFinal, frmFinal);
  Application.Run;
end.
