object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Delphi Dosya Checksum Hesaplama - www.sercanca.com - Ekim-2016'
  ClientHeight = 235
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 65
    Height = 16
    Caption = 'Dosya Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 28
    Height = 16
    Caption = 'MD5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 65
    Width = 41
    Height = 16
    Caption = 'SHA-1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 92
    Width = 57
    Height = 16
    Caption = 'SHA-256'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 119
    Width = 57
    Height = 16
    Caption = 'SHA-384'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 146
    Width = 57
    Height = 16
    Caption = 'SHA-512'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 182
    Width = 42
    Height = 16
    Caption = 'Durum'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Ac: TButton
    Left = 553
    Top = 10
    Width = 46
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = AcClick
  end
  object Edit1: TEdit
    Left = 77
    Top = 10
    Width = 472
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 77
    Top = 37
    Width = 522
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 77
    Top = 64
    Width = 522
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 77
    Top = 91
    Width = 522
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 77
    Top = 118
    Width = 522
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 77
    Top = 145
    Width = 522
    Height = 21
    TabOrder = 6
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 216
    Width = 615
    Height = 19
    Panels = <
      item
        Text = 'Durum : Dosya A'#231#305'n'
        Width = 50
      end>
  end
  object Bar: TProgressBar
    Left = 77
    Top = 176
    Width = 522
    Height = 27
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 288
    Top = 64
  end
  object MainMenu1: TMainMenu
    Left = 200
    Top = 61
    object Dosya1: TMenuItem
      Caption = 'Dosya'
      object A1: TMenuItem
        Caption = 'A'#231
        OnClick = AcClick
      end
      object Kaydet1: TMenuItem
        Caption = 'Kaydet'
        OnClick = Kaydet1Click
      end
      object Karlatr1: TMenuItem
        Caption = 'Kar'#351#305'la'#351't'#305'r'
        OnClick = Karlatr1Click
      end
    end
    object Hakknda1: TMenuItem
      Caption = 'Hakk'#305'nda'
      object wwwsercancacom1: TMenuItem
        Caption = 'www.sercanca.com'
        OnClick = wwwsercancacom1Click
      end
      object Hakknda2: TMenuItem
        Caption = 'Hakk'#305'nda'
        OnClick = Hakknda2Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Checksum'
    Filter = 'Hash Dosyas'#305'|*.Hash'
    Left = 360
    Top = 64
  end
end
