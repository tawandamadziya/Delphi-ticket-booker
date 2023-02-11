unit frmRemove_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons,dmDatabase_u;

type
  TfrmRemove = class(TForm)
    dbRemove: TDBGrid;
    edtName: TEdit;
    edtEmail: TEdit;
    edtSurname: TEdit;
    lblName: TLabel;
    lblEmail: TLabel;
    lblSurname: TLabel;
    Button1: TButton;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRemove: TfrmRemove;

implementation

{$R *.dfm}

end.
