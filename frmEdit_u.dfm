object frmEdit: TfrmEdit
  Left = 0
  Top = 0
  Caption = 'frmEdit'
  ClientHeight = 463
  ClientWidth = 774
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 144
    Top = 280
    Width = 157
    Height = 18
    Caption = 'Enter customer name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblEmail: TLabel
    Left = 312
    Top = 328
    Width = 158
    Height = 18
    Caption = 'Enter customer email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lblSurname: TLabel
    Left = 488
    Top = 280
    Width = 181
    Height = 18
    Caption = 'Enter customer surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object edtName: TEdit
    Left = 160
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtEmail: TEdit
    Left = 336
    Top = 352
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSurname: TEdit
    Left = 512
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnEdit: TButton
    Left = 360
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 408
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
  object dbEdit: TDBGrid
    Left = 0
    Top = 24
    Width = 777
    Height = 193
    DataSource = dmDatabase.dbCustomer
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
