object flatihan10: Tflatihan10
  Left = 0
  Top = 0
  Caption = 'Latihan 10'
  ClientHeight = 147
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Angka'
  end
  object Label2: TLabel
    Left = 8
    Top = 51
    Width = 44
    Height = 13
    Caption = 'Terbilang'
  end
  object iangka: TEdit
    Left = 58
    Top = 21
    Width = 185
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 0
    OnChange = iangkaChange
  end
  object output: TMemo
    Left = 58
    Top = 48
    Width = 185
    Height = 89
    Lines.Strings = (
      'output')
    ReadOnly = True
    TabOrder = 1
  end
  object oangka1: TEdit
    Left = 249
    Top = 21
    Width = 50
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object oangka2: TEdit
    Left = 249
    Top = 48
    Width = 50
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object oangka3: TEdit
    Left = 249
    Top = 75
    Width = 50
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
end