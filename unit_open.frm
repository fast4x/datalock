object form_open: Tform_open
  Left = 387
  Height = 389
  Top = 242
  Width = 419
  BorderStyle = bsNone
  Caption = 'form_open'
  ClientHeight = 389
  ClientWidth = 419
  DesignTimePPI = 120
  OnClick = FormClick
  OnCreate = FormCreate
  LCLVersion = '7.7'
  object FileListBox1: TFileListBox
    Left = 50
    Height = 241
    Top = 110
    Width = 295
    Directory = 'C:\codetyphon\typhon\bin32'
    FileType = [ftReadOnly, ftHidden]
    ItemHeight = 0
    Mask = '*.sd'
    OnDblClick = FileListBox1DblClick
    TabOrder = 0
  end
  object DirectoryEdit1: TDirectoryEdit
    Left = 30
    Height = 28
    Top = 30
    Width = 374
    Directory = 'DirectoryEdit1'
    ShowHidden = False
    ButtonWidth = 29
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 1
    OnChange = DirectoryEdit1Change
    Text = 'DirectoryEdit1'
  end
end
