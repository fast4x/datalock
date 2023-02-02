object Form2: TForm2
  Left = 344
  Height = 468
  Top = 426
  Width = 540
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 468
  ClientWidth = 540
  DesignTimePPI = 120
  OnCreate = FormCreate
  LCLVersion = '7.7'
  object FileListBox1: TFileListBox
    Left = 112
    Height = 310
    Top = 110
    Width = 328
    Directory = 'C:\codetyphon\typhon\bin32'
    FileType = [ftReadOnly, ftHidden]
    ItemHeight = 0
    Mask = '*.sd'
    OnDblClick = FileListBox1DblClick
    TabOrder = 0
  end
  object Button1: TButton
    Left = 218
    Height = 31
    Top = 39
    Width = 94
    Caption = 'Button1'
    OnClick = Button1Click
    TabOrder = 1
  end
  object seldir: TSelectDirectoryDialog
    Options = [ofEnableSizing, ofForceShowHidden, ofViewDetail]
    OnFolderChange = seldirFolderChange
    Left = 140
    Top = 20
  end
end
