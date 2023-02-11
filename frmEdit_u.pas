unit frmEdit_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, dmDatabase_u;

type
  TfrmEdit = class(TForm)
    edtName: TEdit;
    edtEmail: TEdit;
    edtSurname: TEdit;
    lblName: TLabel;
    lblEmail: TLabel;
    lblSurname: TLabel;
    btnEdit: TButton;
    BitBtn1: TBitBtn;
    dbEdit: TDBGrid;
  //procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdit: TfrmEdit;

implementation

{$R *.dfm}

end.
