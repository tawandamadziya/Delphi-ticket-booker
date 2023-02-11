unit frmFinal_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmFinal = class(TForm)
    redTicket: TRichEdit;
    bmbExit: TBitBtn;
    Panel1: TPanel;
    imgFinal: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinal: TfrmFinal;

implementation

{$R *.dfm}

end.
