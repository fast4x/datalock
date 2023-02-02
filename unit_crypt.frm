object Form_crypt: TForm_crypt
  Left = 387
  Height = 412
  Top = 242
  Width = 701
  Caption = 'Form_crypt'
  ClientHeight = 412
  ClientWidth = 701
  DesignTimePPI = 120
  OnCreate = FormCreate
  LCLVersion = '7.7'
  object boxInputFile: TFileNameEdit
    Left = 18
    Height = 28
    Top = 41
    Width = 372
    FileName = 'boxInputFile'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 29
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 0
    Text = 'boxInputFile'
  end
  object boxOutputFile: TFileNameEdit
    Left = 18
    Height = 28
    Top = 110
    Width = 372
    FileName = 'boxOutputFile'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 29
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 1
    Text = 'boxOutputFile'
  end
  object Label1: TLabel
    Left = 18
    Height = 20
    Top = 19
    Width = 85
    Caption = 'File sorgente'
  end
  object Label2: TLabel
    Left = 18
    Height = 20
    Top = 86
    Width = 111
    Caption = 'File destinazione'
  end
  object btnEncrypt: TButton
    Left = 18
    Height = 31
    Top = 160
    Width = 94
    Caption = 'Encrypt'
    OnClick = btnEncryptClick
    TabOrder = 2
  end
  object btnDecrypt: TButton
    Left = 171
    Height = 31
    Top = 160
    Width = 94
    Caption = 'Decrypt'
    OnClick = btnDecryptClick
    TabOrder = 3
  end
  object ProgressBar1: TProgressBar
    Left = 459
    Height = 25
    Top = 104
    Width = 231
    TabOrder = 4
  end
  object Label3: TLabel
    Left = 460
    Height = 20
    Top = 132
    Width = 44
    Caption = 'Label3'
  end
  object strsorg: TLabeledEdit
    Left = 21
    Height = 28
    Top = 261
    Width = 350
    EditLabel.Height = 20
    EditLabel.Width = 350
    EditLabel.Caption = 'stringa sorgente'
    TabOrder = 5
  end
  object strdest: TLabeledEdit
    Left = 21
    Height = 28
    Top = 320
    Width = 350
    EditLabel.Height = 20
    EditLabel.Width = 350
    EditLabel.Caption = 'stringa destinazione'
    TabOrder = 6
  end
  object btnDecrypt1: TButton
    Left = 174
    Height = 31
    Top = 370
    Width = 94
    Caption = 'Decrypt'
    OnClick = btnDecrypt1Click
    TabOrder = 7
  end
  object btnEncrypt1: TButton
    Left = 20
    Height = 31
    Top = 370
    Width = 94
    Caption = 'Encrypt'
    OnClick = btnEncrypt1Click
    TabOrder = 8
  end
  object Cipher: TDCP_3des
    Id = 24
    Algorithm = '3DES'
    MaxKeySize = 192
    OnProgress = CipherProgress
    BlockSize = 64
    Left = 650
    Top = 20
  end
end
