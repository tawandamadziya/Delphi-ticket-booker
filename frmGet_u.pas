unit frmGet_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  frmRemove_u, frmEdit_u, frmAdd_u, Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    btnEdit: TButton;
    btnAdd: TButton;
    btnRemove: TButton;
    BitBtn2: TBitBtn;
    procedure btnEditClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.btnAddClick(Sender: TObject);
begin
frmAdd.ShowModal;
end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
  frmEdit.ShowModal;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  frmRemove.ShowModal;
end;

end.
