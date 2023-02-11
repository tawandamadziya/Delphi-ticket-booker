object frmAdd: TfrmAdd
  Left = 0
  Top = 0
  Caption = 'frmAdd'
  ClientHeight = 504
  ClientWidth = 720
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 109
    Width = 48
    Height = 18
    Caption = 'Name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 155
    Width = 71
    Height = 18
    Caption = 'Surname:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 203
    Width = 57
    Height = 18
    Caption = 'Addres:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 251
    Width = 46
    Height = 18
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 296
    Width = 64
    Height = 18
    Caption = 'Cell No.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 343
    Top = 105
    Width = 91
    Height = 18
    Caption = 'Destination:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 326
    Top = 251
    Width = 137
    Height = 18
    Caption = 'Date of departure:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 326
    Top = 296
    Width = 200
    Height = 18
    Caption = 'Number of seats available:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 326
    Top = 335
    Width = 127
    Height = 18
    Caption = 'Number of seats:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object edtName: TEdit
    Left = 136
    Top = 106
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtSurname: TEdit
    Left = 136
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtAddress: TEdit
    Left = 136
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtEmail: TEdit
    Left = 136
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtCell: TEdit
    Left = 136
    Top = 290
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object dtpDeparture: TDateTimePicker
    Left = 488
    Top = 251
    Width = 186
    Height = 21
    Date = 43976.000000000000000000
    Time = 0.971394722218974500
    TabOrder = 5
  end
  object sedSeatsAvailable: TSpinEdit
    Left = 544
    Top = 290
    Width = 49
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 0
  end
  object Panel1: TPanel
    Left = 136
    Top = 32
    Width = 481
    Height = 41
    Caption = 'Welcome to a new world of safety and comfort'
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
  end
  object sedNumSeats: TSpinEdit
    Left = 528
    Top = 336
    Width = 73
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 0
  end
  object pnlOutput: TPanel
    Left = 298
    Top = 381
    Width = 185
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 9
  end
  object bmbCancel: TBitBtn
    Left = 56
    Top = 456
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 10
    OnClick = bmbCancelClick
  end
  object bmbContinue: TBitBtn
    Left = 550
    Top = 456
    Width = 75
    Height = 25
    Kind = bkYes
    NumGlyphs = 2
    TabOrder = 11
    OnClick = bmbContinueClick
  end
  object btnCalculate: TButton
    Left = 343
    Top = 440
    Width = 75
    Height = 25
    Caption = '&Calculate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 12
    OnClick = btnCalculateClick
  end
  object cmbDestinations: TComboBox
    Left = 528
    Top = 106
    Width = 145
    Height = 21
    TabOrder = 13
    Items.Strings = (
      'Cape Town'
      'Durban'
      'Port Elizabeth'
      'Johannesburg'
      'Pretoria'
      'Polokwanne')
  end
end
