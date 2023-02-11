object dmDatabase: TdmDatabase
  OldCreateOrder = False
  Height = 311
  Width = 486
  object tblAttendent: TADOTable
    Active = True
    Connection = dbCon
    CursorType = ctStatic
    TableDirect = True
    TableName = 'tblAttendents'
    Left = 200
    Top = 112
  end
  object dbCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Tawanda Madziya\Documents\PAT 2020\Win32\Debug\PATDatabase.m' +
      'db.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 104
  end
  object dbAttendent: TDataSource
    DataSet = tblAttendent
    Left = 312
    Top = 112
  end
  object tblCustomer: TADOTable
    Active = True
    Connection = dbCon
    CursorType = ctStatic
    TableName = 'tblCustomers'
    Left = 200
    Top = 184
  end
  object dbCustomer: TDataSource
    DataSet = tblCustomer
    Left = 312
    Top = 192
  end
end
