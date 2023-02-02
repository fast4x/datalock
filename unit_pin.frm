object FormPin: TFormPin
  Left = 0
  Height = 92
  Top = 0
  Width = 454
  BorderStyle = bsToolWindow
  Caption = 'PIN'
  ClientHeight = 92
  ClientWidth = 454
  Color = clForm
  DesignTimePPI = 120
  OnShow = FormShow
  Position = poMainFormCenter
  LCLVersion = '7.7'
  object Panel5: TPanel
    Left = 0
    Height = 92
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
    TabOrder = 0
  end
  object Button1: TButton
    Left = 376
    Height = 39
    Top = 28
    Width = 56
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object pwd: TEdit
    Left = 256
    Height = 39
    Hint = 'Insert PIN'
    Top = 28
    Width = 100
    EchoMode = emPassword
    Font.Height = -23
    OnKeyDown = pwdKeyDown
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
end
