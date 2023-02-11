unit frmLogin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frmEdit_u,
  frmGet_u, clsPAT_u,
  Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    imgBackground: TImage;
    btnLogin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtAttendentID: TEdit;
    edtPassword: TEdit;
    BitBtn1: TBitBtn;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

const
  arrAttendents: array [1 .. 5] of string = ('TM001', 'DB002', 'CK021',
    'RM008', 'AG140');
{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  sPassword, sUser: string;
  iLength, i: integer;
  tfile: textfile;
begin
  sPassword := edtPassword.Text;
  sUser := edtAttendentID.Text;
  // iLength := Length(sUser);
  for i := 1 to 5 do
    if (arrAttendents[i] = sUser) AND (sPassword = 'Tracker7') then
    begin
      AssignFile(tfile,
        'C:\Users\Tawanda Madziya\Documents\PAT 2020\Win32\Debug\Logins.txt');
      Append(tfile);
      Writeln(tfile, ' ');
      Writeln(tfile, 'Date: ' + DateToStr(date));
      Writeln(tfile, 'Time: ' + TimeToStr(Time));
      Writeln(tfile, 'UserID: ' + sUser);
      Writeln(tfile, 'Password: ' + '*******');
      CloseFile(tfile);
      Form1.ShowModal;
      frmLogin.Close;
    end;

  if (arrAttendents[i] <> sUser) AND (sPassword <> 'Tracker7') then
  begin
    MessageDlg('AttendentID or Password is incorrect', mtError, [mbOK], 0);
    edtAttendentID.Clear;
    edtPassword.Clear;
  end;

end;

end.
