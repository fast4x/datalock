object Form_creaapri: TForm_creaapri
  Left = 387
  Height = 176
  Top = 242
  Width = 769
  BorderStyle = bsToolWindow
  Caption = 'DataLock'
  ClientHeight = 176
  ClientWidth = 769
  Color = 12303291
  DesignTimePPI = 120
  OnShow = FormShow
  Position = poMainFormCenter
  LCLVersion = '7.7'
  object Panel1: TPanel
    Left = 240
    Height = 160
    Top = 8
    Width = 522
    BevelOuter = bvNone
    ClientHeight = 160
    ClientWidth = 522
    Color = 15921906
    ParentColor = False
    TabOrder = 0
    object FileNameEdit1: TFileNameEdit
      Left = 20
      Height = 28
      Top = 40
      Width = 480
      DialogTitle = 'Apri DataLock'
      Filter = 'DataLock|*.ldk'
      FilterIndex = 1
      DefaultExt = '.ldk'
      HideDirectories = False
      ButtonWidth = 29
      NumGlyphs = 1
      MaxLength = 0
      TabOrder = 0
    end
    object Label1: TLabel
      Left = 20
      Height = 20
      Top = 10
      Width = 62
      Caption = 'DataLock'
    end
    object editserialepersonale: TLabeledEdit
      Left = 20
      Height = 28
      Top = 110
      Width = 169
      EditLabel.Height = 20
      EditLabel.Width = 169
      EditLabel.Caption = 'Personal Code'
      MaxLength = 6
      TabOrder = 1
    end
    object Button1: TButton
      Left = 419
      Height = 31
      Top = 120
      Width = 94
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 2
    end
    object Button2: TButton
      Left = 310
      Height = 31
      Top = 120
      Width = 94
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
      Visible = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Height = 176
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
    TabOrder = 1
  end
end
