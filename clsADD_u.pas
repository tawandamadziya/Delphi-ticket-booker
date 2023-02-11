unit clsADD_u;

interface

type
  TADD = class(TObject)
  private
    fName: string;
    fSurname: string;
    fEmail: string;
    fCellNo: string;
    fAddress: string;
  public
    constructor create(sName, sSurname, sEmail, sCellNo, sAddress: string);
    function GetName: string;
    function GetSurname: string;
    function GetEmail: string;
    function GetCellNo: string;
    function GetAddress: string;

  end;

implementation

{ TPAT }

constructor TADD.create(sName, sSurname, sEmail, sCellNo, sAddress: string);
begin
  fName := sName;
  fSurname := sSurname;
  fEmail := sEmail;
  fCellNo := sCellNo;
  fAddress := sAddress;
end;

function TADD.GetAddress: string;
begin
  Result := fAddress;
end;

function TADD.GetCellNo: string;
begin
  Result := fCellNo;
end;

function TADD.GetEmail: string;
begin
  Result := fEmail;
end;

function TADD.GetName: string;
begin
  Result := fName;
end;

function TADD.GetSurname: string;
begin
  Result := fSurname;
end;

end.
