object Form1: TForm1
  Left = 387
  Height = 674
  Top = 213
  Width = 810
  AllowDropFiles = True
  Caption = 'DataLock'
  ClientHeight = 649
  ClientWidth = 810
  Color = 14079702
  DesignTimePPI = 120
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  KeyPreview = True
  Menu = MainMenu1
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDropFiles = FormDropFiles
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  Position = poScreenCenter
  LCLVersion = '7.7'
  object Panel1: TPanel
    Left = 0
    Height = 45
    Top = 604
    Width = 810
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 45
    ClientWidth = 810
    Color = cl3DLight
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Height = 18
      Top = 27
      Width = 42
      Caption = 'Pronto'
      Visible = False
    end
    object Statuslbl: TLabel
      Left = 8
      Height = 18
      Top = 8
      Width = 53
      Caption = 'Statuslbl'
    end
    object img_sd: TImage
      Left = 773
      Height = 32
      Hint = 'DataLock Signature Status'
      Top = 8
      Width = 32
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
    end
    object AbMeter1: TAbMeter
      Left = 440
      Height = 20
      Top = 16
      Width = 50
      Anchors = [akTop, akRight]
      Ctl3D = False
      OnClick = AbMeter1Click
      Orientation = moVertical
      UnusedColor = cl3DLight
      UsedColor = clNavy
      Visible = False
    end
    object AbMeter2: TAbMeter
      Left = 520
      Height = 20
      Top = 16
      Width = 50
      Anchors = [akTop, akRight]
      Ctl3D = False
      Orientation = moVertical
      UnusedColor = cl3DLight
      UsedColor = clNavy
      Visible = False
    end
  end
  object PanelFiles: TPanel
    Left = 494
    Height = 572
    Top = 32
    Width = 290
    Align = alClient
    BevelColor = clActiveCaption
    BevelOuter = bvLowered
    BorderWidth = 2
    ClientHeight = 572
    ClientWidth = 290
    TabOrder = 1
    object Panel4: TPanel
      Left = 2
      Height = 86
      Top = 344
      Width = 306
      BevelOuter = bvNone
      ClientHeight = 86
      ClientWidth = 306
      TabOrder = 0
      Visible = False
      object DirectoryEdit1: TDirectoryEdit
        Left = 16
        Height = 26
        Top = 40
        Width = 272
        ShowHidden = False
        ButtonWidth = 29
        NumGlyphs = 1
        Anchors = [akTop, akLeft, akRight]
        MaxLength = 0
        TabOrder = 0
        Visible = False
        OnChange = DirectoryEdit1Change
        OnExit = Edit1Exit
      end
      object Label3: TLabel
        Left = 8
        Height = 18
        Top = 16
        Width = 101
        Caption = ' Esplora cartella'
        Visible = False
      end
    end
    object FileListBox1: TFileListBox
      Left = 2
      Height = 136
      Top = 434
      Width = 294
      Directory = 'C:\codetyphon\typhon\bin32'
      FileType = [ftHidden, ftSystem, ftArchive, ftNormal]
      ItemHeight = 18
      MultiSelect = True
      OnDblClick = FileListBox1DblClick
      OnDragDrop = FileListBox1DragDrop
      OnDragOver = FileListBox1DragOver
      OnMouseDown = FileListBox1MouseDown
      OnMouseMove = FileListBox1MouseMove
      TabOrder = 1
      Visible = False
    end
    object ListBoxtagged: TListBox
      Left = 3
      Height = 548
      Top = 21
      Width = 284
      Align = alClient
      BorderStyle = bsNone
      ItemHeight = 0
      TabOrder = 2
    end
    object Label2: TLabel
      Left = 3
      Height = 18
      Top = 3
      Width = 284
      Align = alTop
      Alignment = taCenter
      Caption = 'Selected Files'
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 810
    AutoSize = True
    ButtonHeight = 32
    ButtonWidth = 32
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esNone
    EdgeOuter = esNone
    Images = ImageList1
    Indent = 5
    TabOrder = 2
    Transparent = True
    object btnnuovo: TToolButton
      Left = 5
      Hint = 'New'
      Top = 0
      Caption = 'btnnuovo'
      ImageIndex = 1
      OnClick = SpeedButton16Click
      ParentShowHint = False
      ShowHint = True
    end
    object btnapri: TToolButton
      Left = 49
      Hint = 'Open'
      Top = 0
      Caption = 'btnapri'
      ImageIndex = 2
      OnClick = Open1Click
      ParentShowHint = False
      ShowHint = True
    end
    object btnagg: TToolButton
      Left = 85
      Hint = 'Add directory and files'
      Top = 0
      Caption = 'btnagg'
      Enabled = False
      ImageIndex = 0
      OnClick = AddFiles1Click
      ParentShowHint = False
      ShowHint = True
    end
    object btndel: TToolButton
      Left = 121
      Hint = 'Delete'
      Top = 0
      Caption = 'btndel'
      Enabled = False
      ImageIndex = 7
      OnClick = DeleteFiles1Click
      ParentShowHint = False
      ShowHint = True
    end
    object btnestrai: TToolButton
      Left = 157
      Hint = 'Extract'
      Top = 0
      Caption = 'btnestrai'
      DropdownMenu = PopupExtract
      Enabled = False
      ImageIndex = 9
      OnClick = Extract1Click
      ParentShowHint = False
      ShowHint = True
      Style = tbsDropDown
    end
    object btnsalva: TToolButton
      Left = 208
      Hint = 'Save'
      Top = 0
      Caption = 'btnsalva'
      Enabled = False
      ImageIndex = 11
      OnClick = Save1Click
      ParentShowHint = False
      ShowHint = True
    end
    object btnsig: TToolButton
      Left = 244
      Hint = 'Close and sign'
      Top = 0
      Caption = 'btnsig'
      Enabled = False
      ImageIndex = 14
      OnClick = Close1Click
      ParentShowHint = False
      ShowHint = True
    end
    object btnchiave: TToolButton
      Left = 280
      Top = 0
      Caption = 'btnchiave'
      Visible = False
    end
    object ToolButton1: TToolButton
      Left = 41
      Height = 32
      Top = 0
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
  end
  object Panel5: TPanel
    Left = 24
    Height = 216
    Top = 128
    Width = 322
    BevelOuter = bvNone
    Caption = 'DataLock'
    Color = 5263440
    Font.Color = clYellow
    Font.Height = -30
    Font.Name = 'Tahoma'
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object PanelProgressBar: TPanel
    Left = 784
    Height = 572
    Top = 32
    Width = 26
    Align = alRight
    BevelOuter = bvNone
    ClientHeight = 572
    ClientWidth = 26
    TabOrder = 4
    object AbProgressBar1: TAbProgressBar
      Left = 0
      Height = 550
      Top = 22
      Width = 26
      Align = alClient
      Anchors = [akTop, akRight]
      Orientation = pbTopDown
      Step = 1
      TabOrder = 0
    end
    object SpeedButton5: TSpeedButton
      Left = 0
      Height = 22
      Top = 0
      Width = 26
      Align = alTop
      Flat = True
      Images = ImageList2
      ImageIndex = 5
      OnClick = SpeedButton5Click
    end
  end
  object PanelMain: TPanel
    Left = 0
    Height = 572
    Top = 32
    Width = 488
    Align = alLeft
    BevelOuter = bvNone
    BorderWidth = 2
    ClientHeight = 572
    ClientWidth = 488
    TabOrder = 5
    Visible = False
    object AbZipOutline1: TAbZipOutline
      Cursor = crDefault
      Left = 2
      Height = 484
      Top = 2
      Width = 440
      Align = alClient
      AutoSave = True
      BorderStyle = bsNone
      Color = clWhite
      DeflationOption = doMaximum
      DOSMode = False
      DragCursor = crDrag
      DragMode = dmManual
      ExtractOptions = [eoCreateDirs, eoRestorePath]
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Logging = False
      OnArchiveItemProgress = AbZipOutline1ArchiveItemProgress
      OnArchiveProgress = AbZipOutline1ArchiveProgress
      OnChange = AbZipOutline1Change
      OnClick = AbZipOutline1Click
      OnConfirmProcessItem = AbZipOutline1ConfirmProcessItem
      OnConfirmOverwrite = AbZipOutline1ConfirmOverwrite
      OnConfirmSave = AbZipOutline1ConfirmSave
      OnDblClick = MenuItemSelectClick
      OnDragDrop = AbZipOutline1DragDrop
      OnDragOver = AbZipOutline1DragOver
      OnEndDrag = AbZipOutline1EndDrag
      OnLoad = AbZipOutline1Load
      OnMouseDown = AbZipOutline1MouseDown
      OnMouseMove = AbZipOutline1MouseMove
      OnNeedPassword = AbZipOutline1NeedPassword
      OnSave = AbZipOutline1Save
      OnWindowsDrop = AbZipOutline1WindowsDrop
      ParentFont = False
      PictureDirectory.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000009090
        904B929292919292928F9292928F9292928F9292928F9292928F9292928F9292
        928F9292928F9292928F9292928F9292928F9292928B91919108000000009191
        919D000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009292928B000000009292
        928F000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009292928F000000009292
        928F000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009292928F000000009292
        928F000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009292928F000000009292
        928F000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009292928F000000009292
        9287000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000092929290000000009292
        92D79292928F9292928F9292928F9292928F9292928F9292928F9292928F9292
        928F9292928F9292928F9292928F9292928F9292928892929286000000009292
        928F000000000000000000000000000000000000000095959501000000000000
        000000000000000000000000000000000000000000009292928B000000009292
        928F00000000000000000000000000000000555555008E8E8E09929292C69292
        928F9292928F9292928F9292928F9292928F9292928B8A8A8A07000000009191
        919D000000000000000000000000000000000000000091919190000000000000
        0000000000000000000000000000000000000000000000000000000000009191
        914C929292919292928F9292928F9292928F9292929091919152000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PictureDirectorySelected.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008C8C8C00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000090909046929292E5929292FF919191AC88888804919191CB9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF90909067929292FF919191D3919191D4929292FF919191A7929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF9292926B929292FF9191916A91919165919191D9929292F2929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF90909062929292FF929292FF929292FF91919194929292E0929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF9191918F919191CC929292FF929292FF929292FF90909046929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF9191918F90909061919191679090903000000000929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF929292FF9292928400000000929292709292
        9270929292709292927092929270929292709292927092929270929292709292
        9270929292709292927092929270929292709292923800000000929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF929292FF9292928800000000929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF929292FF9090904600000000929292FF9292
        92FF929292FF929292FF929292FF929292FF929292FF8F8F8F30000000000000
        0000000000000000000000000000000000000000000000000000919191CB9292
        92FF929292FF929292FF929292FF929292FF919191D000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008F8F8F00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PictureFile.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000008F8F8F000000000000000000000000000000
        0000000000009090904B9191919D9292928F9292928F9292928F9292928F9292
        928F9292928F9292928E919191AC000000000000000000000000000000000000
        0000000000009292929100000000000000000000000000000000000000000000
        000000000000919191009292928E000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000000000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000009191
        91089292928B92929290929292D5000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000009292
        928B00000000878787089191918C000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000000000000000000009292
        929000000000919191AC00000000555555000000000000000000000000000000
        0000000000009292928B00000000000000000000000000000000000000009292
        927E919191A1000000008E8E8E00000000000000000000000000000000000000
        000000000000898989079292928B9292928F9292928F9292928F9292928F9292
        928C8F8F8F109090900000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PictureFileSelected.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000008F8F8F000000000000000000000000000000
        00000000000090909046929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF919191D5000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92F892929274929292709292927A000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        9274929292FF929292FF919191A7000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        9270929292FF919191C000000000555555000000000000000000000000000000
        0000000000009292927D929292FF929292FF929292FF929292FF929292FF9292
        926F929292EF000000008E8E8E00000000000000000000000000000000000000
        0000000000008F8F8F089292927D929292809292928092929280929292809292
        923D8F8F8F179090900000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PictureZipAttribute.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000009292920000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000009191919E9292928E9292928F9292928F9292928F9292
        928F9292928F9292929991919146000000000000000000000000000000000000
        0000000000009191916F90909014000000000000000000000000000000000000
        00008F8F8F000000000091919199000000000000000000000000000000000000
        0000000000009292929000000000000000000000000000000000000000000000
        0000000000008F8F8F009292928F000000000000000000000000000000000000
        0000000000009292928F000000000000000000000000909090329292927D0000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F000000000000000000000000919191A07C7C7C099292
        927D00000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F000000000000000000000000919191979191919C9090
        903200000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000008C8C8C0092929239929292789B9B
        9B0100000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000092929238929292CF0000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000092929238929292CF0000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000092929238929292CF0000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009292928F00000000000000000000000092929238929292CF0000
        000000000000000000009292928F000000000000000000000000000000000000
        0000000000009191918A00000000000000000000000092929238929292CF0000
        000000000000000000009191918E000000000000000000000000000000000000
        0000000000009292922991919186000000000000000092929227929292D10000
        000000000000909090149191919E000000000000000000000000000000000000
        00000000000000000000929292299292928A9292928F92929287929292879292
        928F929292909292926F00000000929292000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PictureZipAttributeSelected.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000009292920000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000929292B7929292FF929292FF929292FF929292FF9292
        92FF929292FF929292F391919140000000000000000000000000000000000000
        00000000000091919163929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292F3000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292FF929292FF9292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292CD919191829292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF9090905F929292F79191
        9182929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF91919168919191639292
        92CD929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292C6929292879292
        92FE929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929280929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        0000000000009191917B929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292FF000000000000000000000000000000000000
        00000000000092929225929292FF929292FF929292FF929292C7929292309292
        92FF929292FF929292FF929292B7000000000000000000000000000000000000
        00000000000000000000929292259292927A9292928092929290000000009292
        9288929292809292926300000000929292000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      PopupMenu = PopupMenu1
      StoreOptions = [soStripDrive, soRemoveDots, soReplace]
      TabOrder = 0
      TabStop = True
    end
    object PanelLog: TPanel
      Left = 2
      Height = 84
      Top = 486
      Width = 484
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'PanelLog'
      ClientHeight = 84
      ClientWidth = 484
      TabOrder = 1
      Visible = False
      object Memo1: TMemo
        Left = 0
        Height = 84
        Top = 0
        Width = 484
        Align = alClient
        BorderStyle = bsNone
        Lines.Strings = (
          'Log'
        )
        TabOrder = 0
      end
    end
    object PanelMoveFiles: TPanel
      Left = 442
      Height = 484
      Top = 2
      Width = 44
      Align = alRight
      BevelOuter = bvNone
      ClientHeight = 484
      ClientWidth = 44
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
      object SpeedButton1: TSpeedButton
        Left = 8
        Height = 28
        Hint = 'Select file'
        Top = 24
        Width = 29
        Flat = True
        Images = ImageList2
        ImageIndex = 0
        OnClick = MenuItemSelectClick
        ShowHint = True
        ParentShowHint = False
      end
      object MenuFileDeselect: TSpeedButton
        Left = 8
        Height = 28
        Hint = 'Deselect file'
        Top = 64
        Width = 29
        Flat = True
        Images = ImageList2
        ImageIndex = 1
        OnClick = MenuFileDeselectClick
        ShowHint = True
        ParentShowHint = False
      end
      object ExtractAllSelected: TSpeedButton
        Left = 8
        Height = 28
        Hint = 'Extract selected files'
        Top = 160
        Width = 29
        Flat = True
        Images = ImageList2
        ImageIndex = 2
        OnClick = ExtractAllSelectedClick
        ShowHint = True
        ParentShowHint = False
      end
      object DeleteAllSelected: TSpeedButton
        Left = 8
        Height = 28
        Hint = 'Delete selected files'
        Top = 200
        Width = 29
        Flat = True
        Images = ImageList2
        ImageIndex = 3
        OnClick = DeleteAllSelectedClick
        ShowHint = True
        ParentShowHint = False
      end
      object MenuFileDeselectAll: TSpeedButton
        Left = 8
        Height = 28
        Hint = 'Deselect all selected files'
        Top = 104
        Width = 29
        Flat = True
        Images = ImageList2
        ImageIndex = 4
        OnClick = MenuFileDeselectAllClick
        ShowHint = True
        ParentShowHint = False
      end
    end
  end
  object Splitter1: TSplitter
    Left = 488
    Height = 572
    Top = 32
    Width = 6
  end
  object MainMenu1: TMainMenu
    Left = 240
    Top = 110
    object File1: TMenuItem
      Caption = '&File'
      object MenuItem2: TMenuItem
        Caption = 'Crypt'
        Visible = False
        OnClick = MenuItem2Click
      end
      object MenuItem1: TMenuItem
        Caption = '&New'
        OnClick = MenuItem1Click
      end
      object Open1: TMenuItem
        Caption = '&Open'
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        ShortCut = 16467
        OnClick = Save1Click
      end
      object Close1: TMenuItem
        Caption = '&Close and Sign'
        OnClick = Close1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Convert1: TMenuItem
        Caption = '&Convert (to .exe)'
        Visible = False
        OnClick = Convert1Click
      end
      object N1: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Preferences1: TMenuItem
      Caption = '&Preferences'
      Visible = False
      object Confirmations1: TMenuItem
        Caption = 'Con&firmations'
        OnClick = Confirmations1Click
      end
      object CompressionMethodToUse1: TMenuItem
        Caption = '&Compression Method To Use'
        object Store1: TMenuItem
          Caption = '&Store'
          GroupIndex = 12
          OnClick = Best1Click
        end
        object Deflate1: TMenuItem
          Tag = 1
          Caption = '&Deflate'
          GroupIndex = 12
          OnClick = Best1Click
        end
        object Best1: TMenuItem
          Tag = 2
          Caption = '&Best'
          GroupIndex = 12
          OnClick = Best1Click
        end
      end
      object DeflationOption1: TMenuItem
        Caption = '&Deflation Options'
        object Normal1: TMenuItem
          Tag = 1
          Caption = '&Normal'
          GroupIndex = 15
          OnClick = SuperFast1Click
        end
        object Maximum1: TMenuItem
          Tag = 2
          Caption = 'Ma&ximum'
          GroupIndex = 15
          OnClick = SuperFast1Click
        end
        object Fast1: TMenuItem
          Tag = 3
          Caption = '&Fast'
          GroupIndex = 15
          OnClick = SuperFast1Click
        end
        object SuperFast1: TMenuItem
          Tag = 4
          Caption = '&Super Fast'
          GroupIndex = 15
          OnClick = SuperFast1Click
        end
      end
      object ExtractOptions1: TMenuItem
        Caption = '&Extract Options'
        object CreateDirs1: TMenuItem
          Caption = '&Create Directories'
          OnClick = CreateDirs1Click
        end
        object RestorePath1: TMenuItem
          Caption = '&Restore Path'
          OnClick = RestorePath1Click
        end
      end
      object Logging1: TMenuItem
        Caption = '&Logging...'
        OnClick = Logging1Click
      end
      object Password1: TMenuItem
        Caption = '&Password...'
        OnClick = Password1Click
      end
      object StoreOptions1: TMenuItem
        Caption = '&Store Options'
        object RecurseTree1: TMenuItem
          Tag = 3
          Caption = '&Recurse Tree'
          OnClick = StripPath1Click
        end
        object RemoveDots1: TMenuItem
          Tag = 2
          Caption = 'Remove &Dots'
          OnClick = StripPath1Click
        end
        object StripPath1: TMenuItem
          Tag = 1
          Caption = '&Strip Path'
          OnClick = StripPath1Click
        end
      end
      object ShowEmptyfolders1: TMenuItem
        Caption = 'S&how Empty folders'
      end
      object TempDirectory1: TMenuItem
        Caption = '&Temp Directory...'
        OnClick = TempDirectory1Click
      end
    end
    object View1: TMenuItem
      Caption = '&View'
      object Attributes1: TMenuItem
        Caption = '&Attributes'
        object za0: TMenuItem
          Caption = '&Compressed Size'
          OnClick = za10Click
        end
        object za1: TMenuItem
          Tag = 1
          Caption = 'Compression &Method'
          OnClick = za10Click
        end
        object za2: TMenuItem
          Tag = 2
          Caption = 'Compression R&atio'
          OnClick = za10Click
        end
        object za3: TMenuItem
          Tag = 3
          Caption = 'C&RC'
          OnClick = za10Click
        end
        object za4: TMenuItem
          Tag = 4
          Caption = '&External File Attributes'
          OnClick = za10Click
        end
        object za5: TMenuItem
          Tag = 5
          Caption = '&Internal File Attributes'
          OnClick = za10Click
        end
        object za6: TMenuItem
          Tag = 6
          Caption = 'E&ncryption'
          OnClick = za10Click
        end
        object za7: TMenuItem
          Tag = 7
          Caption = '&Time Stamp'
          OnClick = za10Click
        end
        object za8: TMenuItem
          Tag = 8
          Caption = '&Uncompressed Size'
          OnClick = za10Click
        end
        object za9: TMenuItem
          Tag = 9
          Caption = '&Version Made By'
          OnClick = za10Click
        end
        object za10: TMenuItem
          Tag = 10
          Caption = 'Version Nee&ded To Extract'
          OnClick = za10Click
        end
        object FileComment1: TMenuItem
          Tag = 11
          Caption = '&File Comment'
          OnClick = za10Click
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object None1: TMenuItem
          Caption = 'N&one'
          OnClick = None1Click
        end
        object All1: TMenuItem
          Caption = 'A&ll'
          OnClick = All1Click
        end
        object Default1: TMenuItem
          Caption = 'Defa&ult'
          OnClick = Default1Click
        end
      end
      object Font1: TMenuItem
        Caption = '&Font...'
        OnClick = Font1Click
      end
      object Style1: TMenuItem
        Caption = '&Style'
        object Hierarchy1: TMenuItem
          Caption = '&Hierarchy'
          OnClick = Hierarchy1Click
        end
        object N5: TMenuItem
          Caption = '-'
        end
        object OS1: TMenuItem
          Caption = '&Only Text'
          OnClick = OS5Click
        end
        object OS2: TMenuItem
          Tag = 1
          Caption = '+/&-'
          OnClick = OS5Click
        end
        object OS3: TMenuItem
          Tag = 2
          Caption = '&Glyphs'
          OnClick = OS5Click
        end
        object OS4: TMenuItem
          Tag = 3
          Caption = '&+/- and Glyphs'
          OnClick = OS5Click
        end
        object OS5: TMenuItem
          Tag = 4
          Caption = 'Only T&ree'
          OnClick = OS5Click
        end
        object OS6: TMenuItem
          Tag = 5
          Caption = '&Tree and Glyphs'
          OnClick = OS5Click
        end
      end
    end
    object Items1: TMenuItem
      Caption = '&Items'
      Visible = False
      object AddFiles1: TMenuItem
        Caption = '&Add Files...'
        OnClick = AddFiles1Click
      end
      object DeleteFiles1: TMenuItem
        Caption = '&Delete Files...'
        OnClick = DeleteFiles1Click
      end
      object ExtractFiles1: TMenuItem
        Caption = '&Extract Files...'
        OnClick = ExtractFiles1Click
      end
      object FreshenFiles1: TMenuItem
        Caption = '&Freshen Files...'
        OnClick = FreshenFiles1Click
      end
    end
    object Help1: TMenuItem
      Caption = '&?'
      object Contents1: TMenuItem
        Caption = '&Guide'
        ShortCut = 112
        OnClick = Contents1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object AbbreviaontheWeb1: TMenuItem
        Caption = 'DataLock on the web'
      end
      object About1: TMenuItem
        Caption = 'DataLock Info'
        OnClick = About1Click
      end
    end
  end
  object FontDialog1: TFontDialog
    MinFontSize = 0
    MaxFontSize = 0
    Options = [fdEffects, fdForceFontExist]
    Left = 320
    Top = 170
  end
  object OpenDialog1: TOpenDialog
    Title = 'Open DataLock Folder'
    DefaultExt = '.ldk'
    Filter = 'DataLock|*.ldk|Zip|*.zip'
    Options = [ofExtensionDifferent, ofForceShowHidden]
    Left = 280
    Top = 300
  end
  object PopupMenu1: TPopupMenu
    AutoPopup = False
    Left = 180
    Top = 250
    object MenuItemSelect: TMenuItem
      Caption = 'Select File'
      OnClick = MenuItemSelectClick
    end
    object MenuItem7: TMenuItem
      Caption = 'Deselect File'
      OnClick = MenuItem7Click
    end
    object Separator1: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete Selected File(s)'
      OnClick = Delete1Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Delete Files'
      OnClick = DeleteFiles1Click
    end
    object Extract1: TMenuItem
      Caption = 'Estract Selected File(s)'
      OnClick = Extract1Click
    end
    object MenuItem6: TMenuItem
      Caption = 'Extract All'
      OnClick = ExtractFiles1Click
    end
    object Freshen1: TMenuItem
      Caption = '&Freshen'
      Visible = False
      OnClick = Freshen1Click
    end
    object Move1: TMenuItem
      Caption = '&Move...'
      Visible = False
      OnClick = Move1Click
    end
    object Run1: TMenuItem
      Caption = '&Run'
      Visible = False
      OnClick = AbZipOutline1DblClick
    end
  end
  object SaveDialog1: TSaveDialog
    Title = 'Save DataLock Folder'
    DefaultExt = '.ldk'
    Filter = 'DataLock|*.ldk'
    Left = 280
    Top = 380
  end
  object OgProtectExe1: TOgProtectExe
    AutoCheck = False
    CheckSize = False
    OnChecked = OgProtectExe1Checked
    Left = 730
    Top = 160
  end
  object OgDaysCode1: TOgDaysCode
    AutoCheck = False
    OnChecked = OgDaysCode1Checked
    OnGetKey = OgDaysCode1GetKey
    OnGetCode = OgDaysCode1GetCode
    AutoDecrease = False
    OnChangeCode = OgDaysCode1ChangeCode
    Left = 730
    Top = 243
  end
  object ImageList1: TImageList
    Height = 32
    Width = 32
    Left = 730
    Top = 310
    Bitmap = {
      4C7A1000000020000000200000000D2600000000000078DAED9D07545CD995AE
      DB1ECF38BCF5ECB6676CAFF77ADEB8BBED6E77DB33B6673CE3D0AD5642899CB3
      080244103967A8222321B2048820048216390A9191C8482089A4D448A056A05B
      220A0524C27E675FA8A27251D4AD72CFAC62ADBD2ADD7BBE73CFBDB7A87DF6BF
      F70180B74080C5C7BB7FBF2AD9DBAAE954504D471E73A2B72062EA6A51D4F3E1
      F2A36FEED41E5F1D6F48843BB5F1AB231547DF0C1447BDE8239F77E631EF3765
      065DA84CF6B5CB3BE6F5BF4048DBC2EC34C3F27BF51981397D8511336375F170
      BF3169CB7697EC7FB93062B63123302F2383F103916C06E3DB35A97E99782CD2
      3085D968E5D1A5DA14BFFC627DFDBF13C4276356280B2EAF11CE795E7676B8D5
      AF6F93F3290F3E9ED3D3810E7FE1E41706BB1B0C1446813CF8D78B62A020C4C5
      95937F36C4D5B0393E985C2F093265DFBB90084D8453C87073E3E55F498B828E
      6426B49E0C81F1FA445AB913E43E6D4B0B8576D23E7284F159762989018D8941
      D091C9805BD5C7B7C4BC4DF6EBC86652ED607B9CED8BE3F35A5B622834C60751
      6D35250741CB8960B898114AB57F893CE26B7CBF817CDE981004AD09A1705944
      7B92F2E9365E7E7E88B3A93CF9F9C12E5E9C7CE62163E3FA63817261371F0F06
      A68DB127273FF090BE618C9D29B9FEC364CAEE4E0987A30E661068A9E7C6CB67
      58EA43B895219CF677824E9AFBD195120667029C21DCDA0890238CCFB230D28F
      340F5B3817EA068DC782E0F2C9488978B87D535C10D9DF1DD23D6D09D71038DB
      17C7E735EC4FBC9325A4B85A93F6EC20DBF708E4053A4361882BF588AFF1FD54
      371B6A3B5E1EAF49CAA7DB78F93E263A66743398478C202CDC02C2D36C2022CF
      1EC213AD212CC80C185606E07750D79B937F48679FA19F990E6DECB0184B886A
      7583A80E773E8BA87602175FDDE3BC7C4395CF20C8424F6A7644B6AD402E97B5
      BBAF4477B86B73F235F7FE05D06C75F76FB91F614C733E56725F28F43E6CE37B
      3FB2C3FDE9B12EAF9FF1F25966A6BE0B1C0D54C0F7A036846CA63FD60610D5EC
      CAC7393B74029EBF79266C2CB284F1794DEFC0A760A2BA132C3495C046671F38
      E8298393812A38E82B53AFEDEDD4043244F3DDC636CB1767877D35D9ED9EBC12
      0E4D772B28EB7FDC01AF9717D9AF2F7C5102319D9EAC6D57639A7C7F64A1B577
      9FB47CFB501D36BF64340BEECEDCA4ECF1C27D585E5D66BFBE33350C497D211B
      F7C3258FFF876360A2BE6B541ABE99EDFE2D8CBFFB13D63D60BD7FFF4F8C54B7
      3FDA2A5F477D1B44B6BB49C66F77E7F3052CB5F7EA1BA9EE78B8953E38C518F0
      3132078EC2E4C20341FCE5E82ED7FF12E68FD9A8EF7BCF5C4B29989C970E4395
      ED33DAFBFEBA2A8EAF75E0AF10546AC7C78AEDF4E2E777BA474AEA9B5AEEDCF9
      3D736D950F2DB595F65A68EE3964A1BDC7CB527B8F155EBF96BAFB3EC2CFA3DA
      9D7F4ABE5BCA457CFF2D46B5BBF914170BF603E9B2E80E0F7DC2CA23364A6C9E
      5827B1A4D84B6E1F4BD20EF9FB16F1C90F9444D9E75E8877196D4A767B7C29CD
      73AE27CBE7D5D53CFFE51BE782010D9FE37BF8196E83DBE23EB82FB62109B38D
      C1F84E598C4372538AEBE4607EC0CA9D925090C6B00D6C0BDBC4B68571190CC6
      B70B9887E3FBB27D16A5650A336C1B19C8E2E6BFF5AD8B699EC3B2E2F21AB290
      C9E2571D3DE2232F36CB90C9E29F63D836C89B8F4CF6BC93BB5573E7492FB9B1
      91854C36DFCDEA623DF9BD5F19E648EEA7109971B16D64200B999CFCB6704F40
      3B1FE20235114E703D2F80362EB6856D62DB2C8E303EA755073941599003D4C5
      38435FA60F0C9F0D12CBC26D705BDC07F7C53604B5BD19BE206B0DF320E3E70A
      B5C1CE5019E848193EC7F7F0B3CDB6B3553E5DC6C9CF723ED42A6F3E32597C6F
      238D9ACA0047B9B191854C36DF58E36224F173AB029D64CE4606B290C9C967F9
      12F176A6502183B1C036B16D1647189F653136C69072C40CF23C0EC3F9601789
      79B80FEE8B6D605BBCED8BE3F35AF8210388B63682A3878DA9E348B23783138E
      E694E1737C0F3FC36D705B71ED49CAA7DBBE49FCC31AFB2A4368F0FF376BC842
      26FBB7B5CAEE8B47B40F40A81CD8C840163239F9C4C0467D0F781AAA43A8850C
      B8A44D6C1B19C812C467998DDA1E70D153051F634D0836D7DD3213F7C536B02D
      6C9393218ACF6B36EA7BC1514799B4A3026EFA6AE0418E837C7F82AF891665F8
      1CDFC3CF701BDC16F711D5A6247C19D937867F4845C94EDE7C6472F9B7CABBDA
      E4C6272C01FED7772C5576A592CF1765C85E440643B41FF81D0B95DDF164DBAF
      C8E3AAB4CCF536B0AD78515CA1F30E2A4A070EA9ECCE216D8C129B243647EC15
      B1650ECEF2FA7B73EBDB8CAEEDA37460AB730867939D7F589BECEBD092197CBE
      2B8F39DE5718FEF46A71B4C0F8FF35F2FEE5C288A75DF96113ADD9C14DD5297E
      EE35719EFF2429B33CCAFF1F09AFFA4A51E4B37B17A48BC7621C75A028EA7953
      667073717CE03BA2B8190CDB1F9C4FF52BBD59756C4516B15F8CAFD7A7075E28
      8EB7FE091FBF8DF19DFE73911372897F97C53C7D5C93C1A585A84BF3F791079B
      AD41381598C2C9AF88F33C2D4F7E4D826F3D27BF38CCA3A02D3D442EECCE6C26
      944578B772F24B989E8518B7C318F7C0E7B2D1415C2F8EA1DA474E79B8F74541
      7C2A76B8DE8FB674E247971E958A395276948ACF372470C73045F1790D350BD8
      9FA6E4604A1BD17E8A013DB9E1649CA2A9F6AF9E8B86DE33E1D09EB9A69D684E
      098686787ECD01A749C297857DD3F8A9EE361992C698A5B1342FBB4A4E7E90B9
      7E416E80935CD867835D21D0429FEBFE0BB4D02BC4DFCA27DD0F43535CB04CB8
      ADF12190E169074CC209B2D4BF2888CFB213EE365011E10D97121952313B9298
      5019E9436900981CFEB0383EA745DB9A50E3921FE402450C77AA5FB5317ED018
      47BE231242299DC1F9187FEAFD228607B51D6A176238E619784D12BE2CEC9BC6
      7733D2C8A0A3DD2C2F6DB892AA22D6AEA629CF7D71E6C0F53553D633D3DC5DE0
      6EA229353FDF4F0BC6720F4864774FEFB73FA8B1BB908A21EBEC974A83209CAF
      0C636794C5F2D9B16CD20F9F83DA102C615F04F3956161FC12BC78D027B00F82
      F89C66A0BC8DD244B81B6B8097A916A547F037D38140E2D763FFF03180BCC6F7
      33BDD5F9D8F3B76A61E5CD4B622FE0D958335F1FC4F125B108BBED7CECA5174F
      09B71116EEB6C09B6793E47913571F64C59F1D29A5D8F7CBAC60EE4605CCDF3E
      0F1325E6F0666112E66E5673F151FFA0B5F7AFB4F21FD4BA526C7CCEE2E3F389
      52737858E7C1C5C7EF00538DDD35F48EFF8671F2055D7FACEF218CB7EBAB7CF6
      EC6FC5679985E61E7763B59D37F494B72DFE2DF89C66ADB3FB176B3A84DD8D26
      6ABB068C54778E19AAEEF80AC7495F79DB2B7C3452D9FEB5B1DA8EBBC9EE7B26
      E8E64B6263A70F58D2C9AF7376FE6E65B2B739F1D72A3BCF30C77B0BC2A70628
      FD7FEC9BDBEBFEFF17E7E357872B6297AE9644BDE82B0C9FEECC637ED99C19DC
      5899E4ED581CE3FB23498F01E3F3F5E901A9986B305697209526FDEE8504B8FC
      79C47CE3A9A092E20C5BB17DA94AF649192C8B792D0BFFEB6655DC72DDC980E2
      BABAE4EF0A625F480FC89087FFD996137291979DC7B0FD979BD57172D1FFE339
      391BE2A8C4C93F13E2A6DC97172117FF1B7DDA02867B00D7F107B9A8B42484E0
      B52C5336CE47A12F4BF841BC7CFCBDDE991206CDA9F4E7214C3424517A79964F
      2C8CCFF61B92D774FBE86B93EB764BCC3B35F1D0951D46B583FA7DCEF6C5F145
      E9FF1B93D6F5FFE99CFAFF104AFF8F9FA3EFDF4ACEA5287F56523EDDC6CBCF0D
      72D2902B3FC42D94931F60ADAF7A2136402E6CF4839936465C7C7F4B5D95685B
      53684F62CA56FF9F1A0E71472CC0DF422F8897CFD2FFE7F839D2DE0FE4E60739
      4384CD9AFE5F189FAD1DB732A07CEECF43DCA0E15820F449AAFF2786F318E8AF
      E39C43C47ADE01CBC4F105EBFF2DD6F5FFB66BFAFF8035FD7F7EA00B97FE3FC1
      59BCFE5F52BEC47E70B013B4E4C6C0ADA6D370BB25175A73632127D44528DFCB
      54539B0E6E94AD09741725C0F46025F9BDD50C2F263A295B18BB04B3C3D5D057
      9A0CD17626E06DA6CBE48AEF68EE5541FF4D5AFEE0F90C9819A985C547FDF0FA
      ABEB94BD99BE0D2B2F9FC0D2B387307FA7056E369F060BDDFD21BC7C7DE5CF20
      488A3873719C1F39EE2A589CBCCAC766D9F2C263981EAA86BADCE83A5EFE86EF
      BD6F4BFDB87B299F1A6B61EC95175FC39BA737E0C5FD2E78DC5F3A2B8CCFB283
      EA3B39F4FF62F20EC8FD81E7FCD5A32B22D9F8199E9BD9E1AAD5C7FD353F10C5
      17340F807DB2D454A2C60875FFA8FF3F421E3D2DB4B04D6AEC45B1299BBC466D
      3B3758FD9E247C71F6F84A09E15F17CD26F6EAE1659819AC5C02D8D0BF1ED2DC
      F789B4FCCEF26478F1E5656EF6D44D2E36DAB3B13618EF2CB8C7FB1BD8446DE7
      3569F80E07D5C8B55D096F66EE0A65E3B1E375323B5AF5EFBC7C53D33FFFD048
      6DC77D69FA7022DC1966C8B97D71BF9B8FFD7CBC03A608FBC9D5B27E91B166CD
      7DEA46AA3BC6B7DA073F074398E82EA48EF3EBEB55F0847C27AC71CBE7C877A0
      33B9F61ECF0E55C78BF3C5CCF5D5DEB1D052F23FA8BEEBA281CAF6E9CDE8FFD1
      703B23F51D7381474C06CBD219B5A3CD39CCD9A1AAEDD09FF1F7D8EED470F9C7
      A40F5FCF0D574AACFFD7D7D7FF074BDDBD1F5868ED5532D756B240FDBFB9CE6E
      1B96FEDF565DFD079B69879CA3DF91B1989E1DA90A92650E80289B1BAEFA4F32
      0EF7446DA3F0FF15FEBFC2FF57F8FF0AFF5FE1FFCBC3FFEF9087FFEFA8F0FFFF
      A7FBFFE28C97EF79504B4B9E7C1F733D862CFCFF4DD53E20BEB5B9CEDE60BAFD
      FF4D69D12DF4C0546D279869ED09A2DBFFE7ABBF70C8004AE3FDE17269127CD1
      920DAD05B1E06EADBD96AB2D82CF32D375FF7F2B3A80301B6318A84C81AFFAF2
      E05143303CA87682C72D113075BD0C32A25C37C5E7CBFFDF2F3AFF1FE7051283
      1DE0DAF913F0E45A294CF6E4C0DDB3DC7A8489120BAA0F290CA70C49F9E22CC8
      D9049E0C14C1C3F39E70BFCC06EE15EA098C373E6A0E8781DAB401AEFA1352FA
      FF76262AF0A8EF73C2F610AB37F9B2D281F8A225AFE6066BFE830EFFDF446327
      7CD953000F1B43D77426E2F42EF99AF0B899B93C3B54FE9AF8A086D2FAFF91DE
      87E0515796C4BA9B07356E307DBDF496B4FE7FEE716F78D8765C62FEBD026D6A
      1E6AE16ADD4FA5F1FFC33DC9357DAD8C1A57498F9FF09F73CE436DC5FFB7D2DF
      67FBF8F2B9F1277DA75F3DA87686F1734662CC181E5DF05D9DB95EF2922EFF7F
      6EA8F6C7E458B26686CAA7714CC5D9CC60F9F8EC48A5BBB86357E8FF15FA7F85
      FE5FA1FF57E8FF15FA7F85FE5FA1FFDF8CFEBF34DA0FF2999E70D2F7082490E3
      106489DE0EBDAF26AFBDFBF2E1E03FD3A9BF4FF6B283C5C7D7F8625F226CE5F5
      E4F5DFD2A9FFC71A8F478F98C1974D2922EDF1D5825FC0E8E83FD0A9FFDFE883
      A1C81AB2138D49ABB7AA62FF37EBFCD3A5FFE7B4AE5C86507EF7D9B019CEEB8F
      2EFD3FA715863B0BE56787397C21882FADFE9FEBBEB13386A1D2183EF6D5E248
      703451ED16C5DFAAFE1F3FC7EDECF50E8091EA763054FD0C6A4FFAB0D91732FC
      C0587D3BA04FB559BEB4A677E013A84AF1829A13DEA0AFB26D5D5B211FBEA5CE
      6EE8C80BE5B8EE1860A5B7878F4F97FE9FD3CCB57761CD6FFE3860F5310839C2
      3DFF4D97FE9FD3E27DCD45FD36F311E8734BA9FFE7B496EC4051DF3FBDA27CB1
      ADEAFF59A6AFF229A06F2AE2F857C7DB12DEDE8C3F2A89FEDF587DE7555F07D3
      AE8410A7DC47973241943DBBDBB46DF1C9C0AFE88CE92F3EB9F601F99FB624C1
      FFBF65FCFFA788FF2BE2FF8AF8BF22FEAF88FF2BE2FF8AF8BF22FEAF88FFD310
      EBB6B2056FDB38703D520C4E8E0DE06E9F03BE874321D4D248C6F17F03F0B44B
      032BB74938E43ECD67B6CED7C0E2A05F8AACE2FF8E8ECD02B99C66E5FE74C9CA
      7D6A0FDDF17F2FDB04B16C0EFBD2D479FA8774C5FF430F1D046BB787ECF6330B
      9EC39992E7ECD74E8133D0DDFF1A5C836739FB10475BFCDFD091EBF8C212E6E1
      E5AB5528AC7841B1EF3F5C86E19B6FE0B017D7185CA32BFE6F6814C537C69149
      F3F06A7115A6675728B6ADF70CEF364BFAEE0FBE4F87FEDFC834898F8FC7FD70
      7219F0AFA4E685E0FBC1F3D93FD1A1FFD7D371E663E3985F1B790DD1296BE7A2
      A89AAF0FE374E9FFB5950F90F6A6D86DD734BDA4D8ACF31D9EB8D6070F26C7F5
      E7315D48A7FEDFD8FCF4C6B892736DE5C13DD676BE9CE77F6AD1C66DEA633AF5
      FF5AFB778085E3C8A6EE7F2BF7196F59E8FFCDDDA7DE21EDD78960BF20C7EEF4
      D65BF02D59EAFB2DDD674C2C3DA6CE12DE4D6273C4DA2DDDA6132C5D9E7CB0D9
      3614EBFF29D6FF53ACFFA758FF4FB1FE9F62FD3FC5FA7F8AF5FF14EBFF49A0F1
      B73D0CE6DE71A0CA2C855D312DA0137C060EBB8741C8216399AFFF67E2970A1F
      643C85F7B29EF1D91F926E828A6398CCD6FFDB1B592790CB6599F32BBFC87E46
      FBFA7F965EB1E2D91BF6F497690BB4ADFF176C650C1FA53F96844FC6E1196DEB
      FFE95AD849C626F66ED633DAD6FFFBCC3E8CDDEEF6A2E710DEB328D0823A5FC1
      AF72D87D587D3F638696F5FF3E713ECEE6DB34BE844B0F96045AE3C412FCA960
      81BDED2F735ED2B2FE9FD2410789C79F186DEBFFA9A9EC81F733E7243DFFB4AE
      FFF767CF5392F097DF3F354FEBFA7F1AFBB7C16FE206377BEFC964FDBF5FE52C
      FCF4FDCC67E522D88B64DC7DDE2A0699AEFFF75ED6823E61E5BD9FF56C943CCE
      13EB7C2F7B21E917990B9B5EFF4F11FF57C4FF15F17F45FC5F11FF57C4FF15F1
      7F45FC5F11FFFFEF95FFEFEB60051FD5DD067366CCDF24FF7F574E2DFCDFCE59
      F855D37D083C6C26D7FC7F472F2FC29EA1F8683B92F2408BE5DBCB38FF3FC4C2
      007E57D64F717DC75EC2BFF5CDC13B979EC201439D4DF3B792FF8F63AB77601B
      7CEA15C83EEEB1972B603AFA9C7AFE9B9CFA35BEF69E40BAF3FFD97EA8EA2EF8
      45FD5D817CB49D0E4E7CC74F47FC9F657F8C3DC56609E2BF5F350CA67AAA6E74
      D7FF43DB6FA84B9D67517CB477BA663D6451FFEFE3D38D5C1CB4F227AF61C7C0
      33DEF7E77FDEB536F74557FC7FC711173EB618CBA2ABFE9F06B9E6DFAF1E11C8
      497DB0089F0ECC0BFA6CE5FF74CCFD918EF8FF6FCF7567093BCE6D84FD2F5D42
      C6A063B68B0E5F1FC752C2B167D9D7EFB68D7F4F58BBC5F1EEEFD4A4FA06B564
      057777E5873DBCF279C4CCB592E89718CB46DF1CFD99DBD5712B43C467EE2F8E
      7AD65310FEA43D97719BF8B2F9A5C7BD55DE7AEB2D89350EA549DE1FB466855C
      BA5A1CFD72A241BA38E82DD2B76ED2EFF3A9FE1EE2B8581FA02933A853DA3907
      6176E5F3C8B9F2046F4761FCBEC2F04959FBBEE80756257AEBF3B24B8E7B84C9
      2BF7BEA7206C818F1FE95D25EBD83BCB9A4F042FF15D73615EF5E83FCA9A3D5A
      7E14737A5704F1F1773BCE41F4E486D1CEC5183EFAC6BD2722882F12B12A8CCF
      8ED1268450F9F69857BFD5F33254124BD510C0783CFA3F1BBE90783EA7619F51
      9B813504D6E2FF6B75002E9D624047169362E09C09CE0B50DB10FF9FA57310EC
      8B49C6A7DF07E5E797847937FE2DF9B147CC2E709E2359DA3986FB322F3FD05C
      BF1EE3DD7D32AE41507F3410F3E05704F1F1777BAC9D2914333D68EF076A1EF0
      F8986BFEC1AA30FE46CEBD2964F9384059B81795632F29AF87DC33E763FDE16C
      900B24BB58F1FA2762F97C75ED0F1B43A2CB21AA2E4186973D354782F5000A82
      5DE14C8013D5573C3E9C1F883B62CE556B408049CCA7D9F8F8FE667A8D72E35B
      F0F3ADB4F75D089113DFD5506D893FF758A9DE467B2F84CA988D731CDAFB3E59
      15C4C7DFF13AFB3F01572335A9FB813A9B5CA62B5492FF158D59915074DC1F18
      CE07416BDF5A7D70617CB6969AF4E390D61ED217752AD77EB3FDC179B2EAD450
      98EC2F25560623F559D49A0F77DACEC2D3EB9570FB523EC4FA5A8BE50BAE03F0
      1955FF1FFB851A8923062A94FF6FAFA70CD6E4DC391AABC1F5FA4C981AB90057
      1B4BF9EEC1044F7B783E791BA686AA616EA4A6607CBCED7B92F0459999F66EB8
      DF730EE66EB7C0CA9B5710697750E0F8F435D5C1F2AB3998BB51B73C3B52DBC7
      AAC96EA6B1BB6CAB6CBC66AE5E3845B157975FC3C2EC8CD0F3D3782E8FCA0558
      7E358F7D589A19A939C58ABD6F35D73C2FDE17A647EA2836EBEFB8BB9D40FE50
      773B7B9BE597B3B826C8EAF46815B53EBBA5969296FE816DAF24E57B1ED6A36A
      EDBF9EB9CF6EFBE6C065605A71CFC19E8E0E81D59595B50D5657E0F944CFF2EC
      68CDBDA7B7AAD87540C8DFB7CD35F7C4E82B6F7B29491F12421CA8BA72AFA727
      D87D78746F0C6A724F41514A1C75DE57969739D8BDABB32335CFE76FD408D5A2
      9B6B1FD866A6A9946AA2BE7308FBA3B54F747D868C68779819AA82C5A97B20EC
      6F75F90D3C1FEF7943D8B3D3C3959F481CFFD7D27ADB526BEF1F708EC4527BAF
      BD85D65E4F4BCD3D26161AFBB6639D80E9C1F203E4DE9A9ABBD5F862716A0C96
      169E50D7FB9BF949783539BC343752FB666EB4B677EA7ACD3B328BFD8F16FFC3
      DC48A50DB9BFBA08EBC9DC48F5EBD9D1F313E45C97CF0C567E26495B8AF8BF22
      FEAF88FF2BE2FF8AF8BF22FEAF88FF2BE2FF8AF8BF043EE8112D8865EC81F8E4
      4F2131F34F10776C0744FB1F0086959ECCE3FFC7A276417ADD4790D1F0219FA5
      9CFB3DB8BA7F26B3FCFFA4ACFF12C8E5B4F4FA5F2F9DAAFF90F6FCFFA3614A62
      D9675AFF0CA71AA9B1F932B9EE57B4E5FF336D7421BDF66391ECA2CEFDB0B4FC
      12F22F6E5B7BAFF143DAF2FF9DEDB7896467367E0C4FE68761E47E3EE7FBB4E5
      FFBBFAFE818B5773C58C35CE940D8CA5C2ECF331C86EFA1DE7764BF1DDFF4C4B
      FEBF67C8EFB9F8732FC6E1CBA797E074CB1FA1A2571F96565E41598F36FFD8B4
      7D484BFEFF61BB3FF25D678F67FAC831DF85F9171370F94EBCA0F3425BFEBF81
      E69F049CF3DFC0C89767E1C15407D7B96019B90769CDFFF78FFE9DD8FB8FC316
      339B3EA035FF5F47E5CF9050F4F126F91FC824FF3FADE5C37748FB75C2B9BF7E
      9151FFA113694EA6F9FF19F51F98A4377C7096306F129B4B6FF8B09D1C73427A
      E3C79BCEFF57D4FF57D4FF57D4FF57D4FF57D4FF57D4FF57D4FF57D4FFDF4CFD
      7FDC0EB50058CF41589B92F06561DF343E5DF5FF7DFCF6824DEE6FC5DAA1FC5F
      CF9997BF779DB2B2F7F4E8AAFFEF19BC0B489B7C567E2301AA6F9D10F89959F9
      BBF674D5FF17C66F18CB81D67B0562F9D2D6FFA78BBFD5FAFF4E01DB69E74B54
      77DDF9F7DF187E508B2A1CAEFA2D1FDFBAEA23086955E7E2D355FF9F937F67AA
      1FEE4C0F805DCDEFD87CECCF8D27DD303E3B0C1615BF64F3E9AAFFCFC977A8F9
      038CCD5CA358ADE385D03E514CF5E7FEDC2838D6FE07D7F1D355FF9FF7FCDB56
      FF2BDC7CDA0B0BAF67E1D9E234D51FFB9ADFF39D7FBAEAFF0BBAFE6CAA3E86BB
      33D7E1C1FC2DAA3F82AE3FBAEAFF9BFAFC7142D0356E55F921E9C76F845EFF74
      F9FC6615EF5A0A62883251FCE2E2E2BFAB48F4D6257E6B61FB69C6ADEEFCB0C9
      2B9F47CE0F96C52CA2B6FE1EF1AFEFD625AC623E00EAF5FB3E8FA0E2FF6DD921
      576A52FD8E16C7BBFF9BA4C75097ECFCDD868CC0ECDE82F0A7A82D903ADE5B7E
      F44D7B2EE34E4D8AAF8948FD3F39D6EA149F0CDC5E56BE5F771E73B2E0A887BE
      00FEB7C8B80ECAC3FFC49C8AF65CA603279F9C5F7B79FADF37AA8EBDC6F1DEF0
      FF7D72E5C91F2D3F0619BE1BDA9422A6E7598C55CB8B8FFEEC6986DBDB9CFE1F
      C6F8D04FC6BEC92CF7E27418956380BE012F9F536F8F7174D4638C5F48A443F7
      42F9E658F790D33711C617A4FDC7D83E6AFDB14FE8EFDFA83846D552E4D41AE0
      5C05D690C4FC099CBBC0B1E4D51D48CA1767D8BFADFACD74F0A5314E7EB6EF91
      2C79B22F11BF34DAC1E1C76CFFCB522FB798E929377E02A589B77C9BD3FFC318
      37D6CBC3732A2BEE45E2CFE31CC09ABFC0CDDFD0DA9B4061881BAD3508714E23
      C3CB8E47132C98CF69B1F607219DEC877E3DFAFB38A7D623647C2EAFD739C439
      81DA187F4AEF90EC6ACDA73D90842F548F408E03C7096B39621F5157C194D85F
      DC3A9F1EDBE0FB1CD4CD95271BF5EC0EAAAA3FDEF8DDBF273B80E6DC7F51E664
      A806A8A5E55CFFCD40E533A04B0391EA7518CEA731E1B88B25DF71BB1036B536
      1C0F9FE5431C54DF25753FC2AC0CE0515F11A5891EAE3B0545C7FCC0C75C0774
      F77FB2B1369D103EA7AE7D2B3908542D420B3D68C889E25AF3FBEB8152A8CB8D
      82402763D0DEFF57B17CE17508B781B1EA7630D7D80D565A7BA93EE298111F88
      EA336B3B674B4DA1EB8F8F7715C057FDA5493383B5FF2ACBF5FF861BB384F661
      7AB0627876A8466B6DFD4BA55459F0D3A35CF9B8D8A7704F4BF0323363D74667
      30767EC74065FB1CDD7C0BDD3D546E008BFDF47A39B4972480B5EEFE737CF5F6
      74F6FC455FF9B3E774F70179C89EEC2F01477375B873F1CCE2DC70F579F8A24E
      A00E1A6B43D0B506215AB4AF35C5AFC8603EC59C82E7C3553F27AF4789D5A256
      5E983F68A5B37F9799E6EE3463B59D2392E643A056C14075FB146A178E98A885
      4E0F554ECE8F16B3E3BE0B83E53F9B1DAA1A991DAEAE16D507DEFA10D6BACAFF
      8E7922E4FBDA99F42DDA4C4B299BDC8727717E02EB10625D42D427E0F5C4B9EF
      EC68C51F78DB5BB85AF753320657047DB691136FFD93AA145F578C9FA35F8FFE
      FDB592E8172354FE7FFC5AFE7F4DDCCA70792C57FE7F437A407E5982AFEA56F2
      FF2B12DCDE6E3A1558DA7F2E72E19E9475D06FD5C4AD62FE7F4DB28F8B5836F1
      47CF9FC4F87FDCB22C7C2F5CCFA03CC1DB4A181F7314E4A0BD5F2D8EF3E4AB79
      91116EF1CB3B72AAFFDF961D7C8F978FFA7FF44DE5C1AF3DEEF7942FFF21C845
      057D4559FADE681D590C683A1EBC2088CFF6BD9382A8DAF9B4D69E288864FBDF
      CD22F89C7A659CA3C05C84CB6723245E8F00FBDFB95EFBBF797DBE8123175A2C
      5F909FDD4ACE0F1E03F68BCAF34F0ADAD0FCAFE7FD234B54DC9FF285B6C0A739
      179C8F9FE1E3A0252F7E435C101F1FF5D72561B2F7BFD1474C74B19A16C447CD
      38C69165C5C66BE8B49F238458E80B3C7ED66F67AC5F5F1DE54BABF61FF3F023
      0F1BAFD70613CD6759A48D31A5A7C71CFB0B4703A027356253E3DBBE1EF3C73C
      06D4ECF3E6016F962F50E34CF9DDC694DF8DE394E46205C71D2DA858BF703F5F
      9F363E1D2688EF6AA4AA212B5EAC93159C49888238375B56FDBD797ECDED5E15
      67435599F0F312A3A1A7A3054AB252291FD25C73F7AC203EFE6E75217D9036F7
      3E3DCC0FAA0B72E064A80FA4317CA1EB6223C5474B8E0E81A3617E8BE4F9C5AE
      AEE6BF0AD2FFA30FE962A4B6651D4075610E9B27C6E2C4D5BF437FDD5A7B1F15
      7BC7F51902D663EE213C730AB83E00F637C04C174E46047271AE5EEE82DB3706
      E14A6F3BD7FBBD9D4DDBA4ADBFA725E0BD18A61F9B717FFC0ECCCD3E858567B3
      D4E39D9B431B7DE86CD5A1B3FE9FB9BE32A427C7B2DBBFD2738962AEAEAEAEE5
      BB2F2FC1ECF4D7E4B85B59DB2CF576361FED6F6AFA91B186D2CF750F7CBA2C0D
      DFDBD98A6B7C07AFF611FED446EE37E9C7FCDC14E917F779E8EE6EFB88157396
      866FA0B603023D1DA0ADB196DDF6F4D457B0B8F812565696E1E58B05987C7C7F
      83DBD172979C038D510EFF0F6BCA1BAAEE98942A0FC3D694CDB83ED0038F1F4D
      50E7E1C1FD3118B8DCC971DC2DEF08CF7357D232D5D8D58B7EB8B8BC7B5EF372
      3AB4A9FBAFB3B3F5D79BF57B31D7FEA0C6EE2213F55D2DC6EA3BAFAEC7E02731
      2FC04875C703D40A98AAEFEA21DBD415E765DEE4E02C09E3F776347BCA4277DF
      D6D6F63669DBB5ABABE1677D7DCDFF489DE735E6F3EEF65625623B7A3A9A3DFA
      FBFBFF5E96FA7F96F5B6B7EA52FCF6567749F7AD8DF6FB716D8AAF734B567043
      F7D9B071D4F7A3CE1FF5FEA8FB17A4FFC7ED707BDC0FF79758FF9FC6F8597356
      70DD4091F4FEFF3D4AFF1FB980ED61BB22731D18CE3FBC901E508DF31932D1FF
      93762F9C0CA8460E2F7BBCEDF4F7AE97444FCA45FF4F38C8E39E7B088C9567FC
      1D799CFCCAE37E55F2E4238FABFE5B844F1DC6A8E5C1460EF204D59F431F16E3
      DBB2E062BB2CFD3FF284D5BFC378366E87F50286CBA4D3FFE3FED80EB6C71927
      17C5E7D3FF137F06FD7BD4F553FA7F327E3D6736F4FFF8D8C3ABFF27DB8BCAE1
      96842F0BFBA6F14F78D89EBB2C27367290C7ADBFD6AFCB0B72960B1F39C8E3AD
      3F87F163D4AD371F0F91D1BC4F08BB0620F244D5BF3BE17E784DFF9FC4905267
      C1A0DAC1F6B8D6BF13C3E7D3FF7B70EBFF719E86A5FF6FE4D2FFBB53DBE1F6B8
      9FD0F5F724E04B6B5807EB448817E42544C329E29B453998CB8D1F4B7C92C6CA
      22E86E6F86DAA23C686FAEA32C2332E41AD7FC8389E639DA8FFB9001D4977F0E
      5505D910E368B95E17CF18728F4740E7C5C6E5DE4B8D1F70C47FEB505B4E271F
      4B1DE3EFCE389E5A68C869BE50F99C7C16C15B7FCE4E773F2D6B10A265C78442
      03197B76CE056917DB47CEA9E4D82FBA3B9B2B85D5BF43BDBDCF26D7FDE39BB7
      3B6C0CF9111E509E160BE7CFA64316D3159202ED81E961CEB6C2F498BB83BD4D
      85187FC61A68A2EAEF192A6F27FD3E2052FFEFBFAEFFC7CF239DCC85C6BC05D9
      CC50A59FB4F5FF38CDDE54F51BC7EF283C0E896E56507ADC5F201F73B8B564C4
      9FBA5E01511CDF8583B5E97C7CEA1A54DFD52CABE34FF5B665D771B9D79E2F90
      BF5E8731DC404A0D8020FEE4E5628820F7C5E5B21481E3CF97FBAFB9D797F8F4
      37B7529351D8F5875AA0B1B6339BE273E5226829FFD25C6B0FC354635713EAFF
      8D55778E19F1EAFFC96B7C1F3FF7B737EA16C4FFAABF44E8F54FA7BF3F3554F3
      91A4F79F22FF5F91FFAFC8FF57E4FF2BF2FF15F9FF8AFC7F45FEFFFF84FC7FAC
      019FE66B0FA5F10150732214B2439C217ABD4FB2E6572406C193AB65F0F87211
      0C9DCF80EB356994FE1A7F6F75125F24C2E160872CF2FFD1CF40DE446701E411
      1F94AA05E8680E71CE6B3A101C8FD1FA4C78D85BF432C6DEB48F61A5FB9F6BFA
      677AF2FFF1D8EEB49CA67CE073B13EF0655721FB77E617ADB9507F2A9CEA636F
      7112C43A1C5C8E733AB49F53FF2D4DFE3FD6FB7F4CFC8C38270BC28910FA7BB7
      A738913D3FD27D2EA14C90FE7C2BF9FFFDE5A9D09C13051901470472EF771540
      7F452A65782D52F5E0CF67BC04607C9B8EFCFFFB64AC4FF8D842775182403EAE
      4390E461CD65379B72606AB8FC6369F5F7C61A3B29069E7B497C0FCAFF18A932
      92968FF90C787FA19FDF7EF618DBF0BE13E2F3C069862BB90FCE91D7153BE9C8
      FFBF527382FACE89B63785CC2027CAEAD29802F9D8AF1887833837B03AD35FFC
      233AF2FFCF26FA517CBCAEAF559F143ADE53D7CA21CDCF1EAA5343F035D73CA4
      34F9FF866ADBA9BAAF398C35AD1B5E5B7CF300574AA8EF25FC1E7A7AAD6C797A
      B0FA2F027DEE2DE6FFE33D759B5C836D6762A971C0798FBAF430E8FA3C1EAAC8
      EF421CF39C50177844CEFBDC4875F466FC5149F2FF0FEBECBB13E16E39F0A0F7
      DCF4D8C533D09A1B0BF9911ED4774269BC3F0C549EC07158981BAAB49365CCFF
      4177F1F709C77376B8B2943CDE9B1DAE9E268F4D78CCB3D72ADEE5DDFEFF03C9
      0A9EC0
    }
  end
  object PopupExtract: TPopupMenu
    Left = 68
    Top = 101
    object MenuItem3: TMenuItem
      Caption = 'Extract Selected File'
      OnClick = Extract1Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Extract All Selected Files'
      OnClick = ExtractAllSelectedClick
    end
    object MenuItem4: TMenuItem
      Caption = 'Extract All'
      OnClick = ExtractFiles1Click
    end
  end
  object ImageList2: TImageList
    Height = 24
    Width = 24
    Left = 632
    Top = 304
    Bitmap = {
      4C7A0600000018000000180000004C0400000000000078DAED5A4B485451189E
      C9478BAC16A68B1E2069264911D142484C6A1B31E8D8C3125B1664318D161166
      8FA10C05C9484A455A14F420899016998FB2369A42AD82D28628A31659D6A2B2
      C6FE83DFC0E1721FE7DC7B4F35727FF898CBB9FFFFDD73CFEBFFCEB9E3F3FD13
      4B226C2454118E5880F9142146C4CA0851C2B4245E134A2DB84FC07710BEE902
      F5613E41C210628F9BD49BDD6F977857DE92091DE028D169EF28EA9DECA0DF58
      EC30614C53C72283E7DAB120B80AB9B22A94A5BBC09F01AEFD5C591DCAFC02F1
      6D8480C97D3FB8EA74C68D88F510A6D00E46360D4E3BFCF3087D845F847207FC
      99842E42B70E7A0913841821F49FF28BB4CF4E05ED6FA77F558FCFF8FC5AA468
      7EC5D7875217F8CB74D68724ACDF430ED7B714C2086154670D2EC5733B6C3E83
      715FC19835EA9F5A3CE329DE3343B0BDB7A1DE8CFB98857F09D66FD9FC386A31
      AEB4F9A610E32A42A83740043E1B6CE6BC44354FFF78FA27D1F44F00B9C5CAEC
      E89F2072628FE03BC8E45F364E7F121E13E6BBCC1FC29A3B014DA2A755BAA065
      FE477EBE7D9E28681FB7FA57F5F8F4F48FA77F3CFDE3E91F4FFFA8D53F190273
      DA89FEB907A83AFFE903DCD63F32FC4ECE1F1291BF1D9C691C7FFCBADD05FE00
      B4C900E1113080B280CBFAE733A0E2FC2788FC17B3E076A27F0E029EFEF1F48F
      A77F3C635643F842F8A4012BAB76817F92B04CA77C319EE1D4A66CDED3B3621B
      F34A8B6213FEE584FB0EB8BBC16166050EF80B04DA285B13934318C7752DD62F
      76FD1175E57DB305F8176A62D6115EE8F0BF22ACD5F82E10ECE71F9AFE1AD4E1
      1FE1F2DE3462FC82FCE35CDC56C2031DFE7EC216CEEF9DC4387DCEC5ED2274EA
      F0DFF5CD7C1F8CFB3D93E0EFE5E2F621EF69F9AF12F6727E3D12FC37B938B647
      6CD6E16F211CE6FC6E48F0B770711140CBCFF2D769CEEFA204FF292EAE19EFA0
      E567BFE739BF9312FC076CCCDD2A09FE721BFCE512FCF998FFA2DC1F08ABBC54
      3C2BAC9290A588BB09E3658F02EE7A703729E06E0037DB97B26F02EC7F094B5D
      E48F223FC5B839C5AED93781CD2EF0E7223FB179BA9EB09A10E6F6212DD81F89
      D81CC235E84EDEF208EF811C94A512CEE25D6E09E6DFA3A853A5CE3DF68C3784
      0A4D79083135027BB56F92B9286E9DD0BB667B4296477E1356D8E05F89760A9B
      F83CC41EDBAE0D5B9C0FB1BEBBE480BFD54207B1317EC6013F8BFD6EA1DB2E3B
      E067DFAFDE9ADCEFC7D9805D1B813633B26A8C815C07E3E790894F26F673B76D
      F0DFC1F8B73AA3AAC15C0C497087111316F0F5632D89616D4935F19D4B3807DF
      EB12FA3F85D3A06378A73538F74CC3750DCEBC98CF059B67529B7C33DFC5633A
      9A2A867C53ECC2FACF72D50EF409C376C2124FEA78E6A2EDE6F2BE0A8B223FE5
      29E2E73552BE895F96CFFA9BA9111AB1FE4E9ACCEB0A83F540166D0ADAE86F68
      EC2645FDFB12ED6F658DF055B9FF6948B0BE6975613CC674747BDCD87F11BE42
      9BB7F98CBF57982162B16F159DDF4E2CBE078A2A5C0773B0D67A360BEC0F3835
      D7F8
    }
  end
end
