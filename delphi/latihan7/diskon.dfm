object flatihan7: Tflatihan7
  Left = 0
  Top = 0
  Caption = 'Latihan 7'
  ClientHeight = 315
  ClientWidth = 397
  Color = 8847276
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object departlabel: TLabel
    Left = 24
    Top = 16
    Width = 136
    Height = 22
    Caption = 'Departemen Store'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object jkelamin: TLabel
    Left = 24
    Top = 56
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object ukuranlabel: TLabel
    Left = 24
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Ukuran'
  end
  object labelpelanggan: TLabel
    Left = 24
    Top = 120
    Width = 50
    Height = 13
    Caption = 'Pelanggan'
  end
  object labelharga: TLabel
    Left = 24
    Top = 168
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object labeldiskon: TLabel
    Left = 24
    Top = 200
    Width = 41
    Height = 13
    Caption = 'Discount'
  end
  object labeltotal: TLabel
    Left = 24
    Top = 232
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object jkpria: TRadioButton
    Left = 136
    Top = 55
    Width = 113
    Height = 17
    Caption = 'Pria'
    TabOrder = 0
  end
  object jkwanita: TRadioButton
    Left = 255
    Top = 55
    Width = 113
    Height = 17
    Caption = 'Wanita'
    TabOrder = 1
  end
  object cbbukuran: TComboBox
    Left = 136
    Top = 85
    Width = 232
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'S'
      'M'
      'L')
  end
  object chbpelanggan: TCheckBox
    Left = 136
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Ya'
    TabOrder = 3
  end
  object tdharga: TEdit
    Left = 136
    Top = 165
    Width = 232
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object tddiskon: TEdit
    Left = 136
    Top = 197
    Width = 232
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object tdtotal: TEdit
    Left = 136
    Top = 229
    Width = 232
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object btnhitung: TButton
    Left = 131
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 7
    OnClick = btnhitungClick
  end
  object btnreset: TButton
    Left = 212
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 8
    OnClick = btnresetClick
  end
  object btnclose: TButton
    Left = 293
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 9
    OnClick = btncloseClick
  end
end