object DemoDlg: TDemoDlg
  Left = 287
  Height = 125
  Top = 242
  Width = 388
  ActiveControl = Edit1
  Caption = 'DemoDlg'
  ClientHeight = 125
  ClientWidth = 388
  DesignTimePPI = 120
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Position = poScreenCenter
  LCLVersion = '7.7'
  object Button1: TButton
    Left = 280
    Height = 31
    Top = 10
    Width = 94
    Caption = '&OK'
    Default = True
    ModalResult = 1
    OnClick = Button1Click
    TabOrder = 0
  end
  object Button2: TButton
    Left = 280
    Height = 31
    Top = 50
    Width = 94
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 10
    Height = 24
    Top = 10
    Width = 261
    TabOrder = 2
    Text = 'Edit1'
  end
end
