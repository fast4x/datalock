object WriterForm: TWriterForm
  Left = 387
  Height = 519
  Top = 242
  Width = 652
  BorderStyle = bsDialog
  Caption = 'Payload Writer Demo: Writer.exe'
  ClientHeight = 519
  ClientWidth = 652
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
    Height = 81
    Top = 0
    Width = 652
    Align = alTop
    AutoSize = False
    Caption = 'Enter some text into the control below and click the Store button to write the text as a "payload" in the Reader.exe program. Alternatively click the Delete button to remove any payload from Reader.exe.'
    Color = clBtnHighlight
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    ParentFont = False
    Transparent = False
    WordWrap = True
  end
  object memData: TMemo
    Left = 0
    Height = 50
    Top = 240
    Width = 444
    Lines.Strings = (
      'DataLck'
    )
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnStore: TButton
    Left = 0
    Height = 31
    Top = 449
    Width = 94
    Caption = '&Store'
    OnClick = btnStoreClick
    TabOrder = 1
  end
  object btnDelete: TButton
    Left = 230
    Height = 31
    Top = 449
    Width = 94
    Caption = '&Delete'
    OnClick = btnDeleteClick
    TabOrder = 2
  end
  object btnClose: TButton
    Left = 340
    Height = 31
    Top = 449
    Width = 94
    Caption = '&Close'
    OnClick = btnCloseClick
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 0
    Height = 24
    Top = 90
    Width = 300
    TabOrder = 4
  end
  object Button1: TButton
    Left = 0
    Height = 31
    Top = 120
    Width = 124
    Caption = 'Crea unique id'
    OnClick = Button1Click
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 320
    Height = 24
    Top = 90
    Width = 200
    TabOrder = 6
  end
  object Button2: TButton
    Left = 320
    Height = 31
    Top = 120
    Width = 121
    Caption = 'Preleva data ora'
    OnClick = Button2Click
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 2
    Height = 24
    Top = 161
    Width = 518
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 2
    Height = 24
    Top = 196
    Width = 518
    TabOrder = 9
  end
  object Button3: TButton
    Left = 470
    Height = 31
    Top = 240
    Width = 150
    Caption = 'Match codici'
    OnClick = Button3Click
    TabOrder = 10
  end
  object Label1: TLabel
    Left = 532
    Height = 16
    Top = 161
    Width = 41
    Caption = 'codice'
  end
  object Label2: TLabel
    Left = 531
    Height = 16
    Top = 199
    Width = 26
    Caption = 'md5'
  end
  object memData1: TMemo
    Left = 0
    Height = 50
    Top = 300
    Width = 444
    Lines.Strings = (
      'pRYXo6s5'
    )
    ScrollBars = ssVertical
    TabOrder = 11
  end
  object btnStore1: TButton
    Left = 110
    Height = 31
    Top = 450
    Width = 94
    Caption = '&Store con seriale'
    OnClick = btnStore1Click
    TabOrder = 12
  end
end
