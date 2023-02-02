object BaseDirDlg: TBaseDirDlg
  Left = 387
  Height = 185
  Top = 242
  Width = 621
  BorderStyle = bsToolWindow
  Caption = 'BaseDirDlg'
  ClientHeight = 185
  ClientWidth = 621
  DesignTimePPI = 120
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Position = poScreenCenter
  LCLVersion = '7.7'
  object Button1: TButton
    Left = 518
    Height = 31
    Top = 149
    Width = 94
    Caption = '&OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 408
    Height = 31
    Top = 149
    Width = 94
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 248
    Height = 20
    Top = 109
    Width = 89
    Caption = 'CheckBox2'
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 248
    Height = 20
    Top = 79
    Width = 89
    Caption = 'CheckBox1'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 438
    Height = 21
    Top = 81
    Width = 134
    Caption = '&Create Directory...'
    OnClick = Button3Click
    TabOrder = 3
    Visible = False
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 240
    Height = 24
    Top = 29
    Width = 374
    OnAcceptDirectory = DirectoryEdit1AcceptDirectory
    ShowHidden = False
    ButtonWidth = 29
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 5
  end
  object Label1: TLabel
    Left = 240
    Height = 16
    Top = 8
    Width = 40
    Caption = 'Extract'
  end
  object Panel5: TPanel
    Left = 0
    Height = 185
    Top = 0
    Width = 224
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'DataLock'
    Color = 5263440
    Font.Color = clYellow
    Font.Height = -30
    Font.Name = 'Tahoma'
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
end
