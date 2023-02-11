unit frmAdd_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Samples.Spin, Vcl.ComCtrls, frmFinal_u, clsADD_u, math, dmDatabase_u;

type
  TfrmAdd = class(TForm)
    edtName: TEdit;
    edtSurname: TEdit;
    edtAddress: TEdit;
    edtEmail: TEdit;
    edtCell: TEdit;
    dtpDeparture: TDateTimePicker;
    sedSeatsAvailable: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    sedNumSeats: TSpinEdit;
    Label6: TLabel;
    pnlOutput: TPanel;
    bmbCancel: TBitBtn;
    bmbContinue: TBitBtn;
    btnCalculate: TButton;
    cmbDestinations: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure bmbContinueClick(Sender: TObject);
    procedure bmbCancelClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
    objPAT: TADD;
  public
    { Public declarations }
  var
    tFile: TextFile;
    rPrice: real;
    sName, sSurname, sDestination, sDOD, sCell, sAddress, sEmail: string;
    sCustID, sAttID: string;
  end;

var
  frmAdd: TfrmAdd;

implementation

{$R *.dfm}

procedure TfrmAdd.bmbCancelClick(Sender: TObject);
begin
  frmAdd.Close;
end;

procedure TfrmAdd.bmbContinueClick(Sender: TObject);
var

  iRandom: integer;
begin
  sAttID := InputBox('Alegence Airlines',
    'For further verification please enter your staff ID', '');
  Randomize;
  sCustID := Copy(edtName.Text, 1, 1);
  sCustID := sCustID + Copy(edtSurname.Text, 1, 1);
  sCustID := UpperCase(sCustID);
  iRandom := RandomRange(1000, 9900);
  sCustID := sCustID + IntToStr(iRandom);

  sDestination := cmbDestinations.Items[cmbDestinations.ItemIndex];
  sDOD := DateToStr(dtpDeparture.Date);
  if (edtName.Text = '') OR (edtSurname.Text = '') OR (edtAddress.Text = '') OR
    (edtEmail.Text = '') OR (edtCell.Text = '') then
    ShowMessage('Please fill in all information')
  else
  begin
    AssignFile(tFile,
      'C:\Users\Tawanda Madziya\Documents\PAT 2020\Win32\Debug\CustomerTicket.txt');
    Append(tFile);
    sName := edtName.Text;
    sSurname := edtSurname.Text;
    sAddress := edtAddress.Text;
    sCell := edtCell.Text;
    sEmail := edtEmail.Text;
    objPAT := TADD.create(sName, sSurname, sEmail, sCell, sAddress);
    sName := objPAT.GetName;
    sSurname := objPAT.GetSurname;
    sEmail := objPAT.GetEmail;
    sCell := objPAT.GetCellNo;
    sAddress := objPAT.GetAddress;
    Writeln(tFile, ' ');
    Writeln(tFile, 'Date of Departure: ' + sDOD);
    Writeln(tFile, 'Destination: ' + sDestination);
    Writeln(tFile, 'Name: ' + sName);
    Writeln(tFile, 'Surname: ' + sSurname);
    Writeln(tFile, 'Price: ' + FloatToStrF(rPrice, ffCurrency, 8, 2));
    CloseFile(tFile);

    with dmDatabase do
    begin
      tblCustomer.Open;
      tblCustomer.Insert;
      tblCustomer['CustID'] := sCustID;
      tblCustomer['Name'] := sName;
      tblCustomer['Surname'] := sSurname;
      tblCustomer['HomeAddress'] := sAddress;
      tblCustomer['Email'] := sEmail;
      tblCustomer['CellNo'] := sCell;
      tblCustomer['FlightDestination'] := sDestination;
      tblCustomer['DateOfDeparture'] := sDOD;
      tblCustomer['Price'] := rPrice;
      tblCustomer.Post;
    end;
    with dmDatabase do
    begin
      tblAttendent.Open;
      tblAttendent.Insert;
      tblAttendent['AttendentID'] := sAttID;
      tblAttendent['CustID'] := sCustID;
      tblAttendent['FlightDestination'] := sDestination;
      tblAttendent['DateOfDeparture'] := sDOD;
      tblAttendent['Price'] := rPrice;
      tblAttendent.Post;
    end;
    frmFinal.ShowModal;
    frmAdd.Close;
  end;
end;

procedure TfrmAdd.btnCalculateClick(Sender: TObject);
begin
  rPrice := 0;
  bmbContinue.Enabled := True;
  rPrice := sedNumSeats.Value;
  rPrice := rPrice * 1200;
  pnlOutput.Caption := FloatToStrF(rPrice, ffCurrency, 8, 2);

end;

procedure TfrmAdd.FormCreate(Sender: TObject);
begin
  bmbContinue.Enabled := False;
  sedSeatsAvailable.Enabled := False;
end;

end.
