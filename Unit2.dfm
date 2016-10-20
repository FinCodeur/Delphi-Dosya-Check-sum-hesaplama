object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Dosya Do'#287'rulama'
  ClientHeight = 498
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 7
    Width = 649
    Height = 86
    Caption = 'Dosya Bilgileri'
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 22
      Width = 40
      Height = 16
      Caption = 'Dosya'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 49
      Width = 86
      Height = 16
      Caption = 'Hash Dosyas'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dosya_adi: TEdit
      Left = 109
      Top = 21
      Width = 409
      Height = 21
      TabOrder = 0
    end
    object hash_adi: TEdit
      Left = 109
      Top = 48
      Width = 409
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 523
      Top = 21
      Width = 43
      Height = 21
      Caption = '...'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 523
      Top = 48
      Width = 43
      Height = 21
      Caption = '...'
      TabOrder = 3
      OnClick = Button2Click
    end
    object kontrol: TButton
      Left = 573
      Top = 21
      Width = 68
      Height = 48
      Caption = 'Kontrol Et'
      TabOrder = 4
      OnClick = kontrolClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 99
    Width = 649
    Height = 73
    Caption = 'MD5 Kontrol'
    TabOrder = 1
    object Label3: TLabel
      Left = 4
      Top = 18
      Width = 72
      Height = 16
      Caption = 'Dosya MD5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 4
      Top = 44
      Width = 64
      Height = 16
      Caption = 'Hash MD5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object md5_onay: TShape
      Left = 573
      Top = 17
      Width = 57
      Height = 47
      Shape = stCircle
    end
    object Dosya_md5: TEdit
      Left = 109
      Top = 17
      Width = 457
      Height = 21
      TabOrder = 0
    end
    object Hash_md5: TEdit
      Left = 109
      Top = 43
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 177
    Width = 649
    Height = 73
    Caption = 'SHA-1 Kontrol'
    TabOrder = 2
    object Label4: TLabel
      Left = 4
      Top = 18
      Width = 85
      Height = 16
      Caption = 'Dosya SHA-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = 44
      Width = 77
      Height = 16
      Caption = 'Hash SHA-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sha1_onay: TShape
      Left = 573
      Top = 17
      Width = 57
      Height = 47
      Shape = stCircle
    end
    object Dosya_Sha1: TEdit
      Left = 109
      Top = 17
      Width = 457
      Height = 21
      TabOrder = 0
    end
    object Hash_sha1: TEdit
      Left = 109
      Top = 43
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 252
    Width = 649
    Height = 73
    Caption = 'SHA 256 Kontrol'
    TabOrder = 3
    object Label6: TLabel
      Left = 4
      Top = 18
      Width = 101
      Height = 16
      Caption = 'Dosya SHA-256'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 44
      Width = 93
      Height = 16
      Caption = 'Hash SHA-256'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sha256_onay: TShape
      Left = 573
      Top = 17
      Width = 57
      Height = 47
      Shape = stCircle
    end
    object Dosya_sha256: TEdit
      Left = 109
      Top = 17
      Width = 457
      Height = 21
      TabOrder = 0
    end
    object hash_sha256: TEdit
      Left = 109
      Top = 43
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 331
    Width = 649
    Height = 73
    Caption = 'SHA 384 Kontrol'
    TabOrder = 4
    object Label9: TLabel
      Left = 4
      Top = 18
      Width = 101
      Height = 16
      Caption = 'Dosya SHA-384'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 4
      Top = 44
      Width = 93
      Height = 16
      Caption = 'Hash SHA-384'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sha384_onay: TShape
      Left = 573
      Top = 17
      Width = 57
      Height = 47
      Shape = stCircle
    end
    object Dosya_Sha384: TEdit
      Left = 109
      Top = 17
      Width = 457
      Height = 21
      TabOrder = 0
    end
    object hash_sha384: TEdit
      Left = 109
      Top = 43
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox6: TGroupBox
    Left = 8
    Top = 410
    Width = 649
    Height = 73
    Caption = 'SHA 512 Kontrol'
    TabOrder = 5
    object Label11: TLabel
      Left = 4
      Top = 18
      Width = 101
      Height = 16
      Caption = 'Dosya SHA-512'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 4
      Top = 44
      Width = 93
      Height = 16
      Caption = 'Hash SHA-512'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sha512_onay: TShape
      Left = 573
      Top = 17
      Width = 57
      Height = 47
      Shape = stCircle
    end
    object Dosya_sha512: TEdit
      Left = 109
      Top = 17
      Width = 457
      Height = 21
      TabOrder = 0
    end
    object Hash_sha512: TEdit
      Left = 109
      Top = 43
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
end
