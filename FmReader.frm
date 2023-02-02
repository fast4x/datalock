object ReaderForm: TReaderForm
  Left = 387
  Height = 336
  Top = 242
  Width = 629
  BorderStyle = bsToolWindow
  Caption = 'Payload Reader Demo: Reader.exe'
  ClientHeight = 336
  ClientWidth = 629
  Color = clBtnFace
  DesignTimePPI = 120
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '7.7'
  object lblHelp: TLabel
    Left = 0
    Height = 65
    Top = 0
    Width = 629
    Align = alTop
    AutoSize = False
    Caption = 'This program displays the data (if any) attached as a payload to the program file. The length of any data is also displayed.'
    Color = clBtnHighlight
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    ParentFont = False
    Transparent = False
    WordWrap = True
  end
  object lblSize: TLabel
    Left = 0
    Height = 16
    Top = 280
    Width = 40
    Caption = 'lblSize'
  end
  object memData: TMemo
    Left = 0
    Height = 96
    Top = 65
    Width = 629
    Align = alTop
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnClose: TButton
    Left = 506
    Height = 31
    Top = 300
    Width = 94
    Caption = '&Close'
    OnClick = btnCloseClick
    TabOrder = 1
  end
  object Button1: TButton
    Left = 0
    Height = 31
    Top = 300
    Width = 94
    Caption = 'Controlla file'
    OnClick = Button1Click
    TabOrder = 2
  end
  object Button2: TButton
    Left = 110
    Height = 31
    Top = 300
    Width = 160
    Caption = 'Controlla con decrypt'
    OnClick = Button2Click
    TabOrder = 3
  end
  object editpin: TLabeledEdit
    Left = 0
    Height = 24
    Top = 210
    Width = 100
    EditLabel.Height = 16
    EditLabel.Width = 100
    EditLabel.Caption = 'PIN'
    TabOrder = 4
  end
  object editcodserial: TLabeledEdit
    Left = 120
    Height = 24
    Top = 210
    Width = 240
    EditLabel.Height = 16
    EditLabel.Width = 240
    EditLabel.Caption = 'CODICE SERIALE DEL FILE'
    TabOrder = 5
  end
  object editcodregistraz: TLabeledEdit
    Left = 380
    Height = 24
    Top = 210
    Width = 240
    EditLabel.Height = 16
    EditLabel.Width = 240
    EditLabel.Caption = 'CODICE REGISTRAZIONE DEL FILE'
    TabOrder = 6
  end
  object editcodapp: TLabeledEdit
    Left = 120
    Height = 24
    Top = 260
    Width = 240
    EditLabel.Height = 16
    EditLabel.Width = 240
    EditLabel.Caption = 'CODICE APPLICAZIONE DEL FILE'
    TabOrder = 7
  end
end
