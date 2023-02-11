unit dmDatabase_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDatabase = class(TDataModule)
    tblAttendent: TADOTable;
    dbCon: TADOConnection;
    dbAttendent: TDataSource;
    tblCustomer: TADOTable;
    dbCustomer: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDatabase: TdmDatabase;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
