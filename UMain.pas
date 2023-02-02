(*
    DataLock is a Tool for data protection
    Copyright (C) 2022 Rino Russo
    https://www.rinorusso.it


    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*)

{$MODE Delphi}

unit UMain;

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Classes, Graphics, Controls,
  Forms, Dialogs, Menus, ExtCtrls, FileCtrl, StdCtrls, Buttons, EditBtn,
  AbArcTyp, AbUtils, AbZipOut, AbBase, AbBrowse, AbComCtrls, AbZView,
  LCLTranslator, ComCtrls, dos, fileinfo, ogutil, ogproexe, onguard;

type

  { TForm1 }

  TForm1 = class(TForm)
    AbMeter1: TAbMeter;
    AbMeter2: TAbMeter;
    AbProgressBar1: TAbProgressBar;
    AbZipOutline1: TAbZipOutline;
    DirectoryEdit1: TDirectoryEdit;
    ImageList2: TImageList;
    img_sd: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    ListBoxtagged: TListBox;
    Memo1: TMemo;
    MenuFileDeselect: TSpeedButton;
    MenuFileDeselectAll: TSpeedButton;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItemSelect: TMenuItem;
    PanelLog: TPanel;
    PanelMain: TPanel;
    PanelMoveFiles: TPanel;
    Separator1: TMenuItem;
    OgDaysCode1: TOgDaysCode;
    Panel5: TPanel;
    PanelProgressBar: TPanel;
    PopupExtract: TPopupMenu;
    SpeedButton1: TSpeedButton;
    ExtractAllSelected: TSpeedButton;
    DeleteAllSelected: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Splitter1: TSplitter;
    Statuslbl: TLabel;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    MenuItem1: TMenuItem;
    OgProtectExe1: TOgProtectExe;
    Open1: TMenuItem;
    Save1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Items1: TMenuItem;
    Help1: TMenuItem;
    Contents1: TMenuItem;
    N2: TMenuItem;
    About1: TMenuItem;
    Preferences1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ToolBar1: TToolBar;
    btnnuovo: TToolButton;
    btnapri: TToolButton;
    btnagg: TToolButton;
    btndel: TToolButton;
    btnestrai: TToolButton;
    btnsalva: TToolButton;
    btnsig: TToolButton;
    btnchiave: TToolButton;
    ToolButton1: TToolButton;
    View1: TMenuItem;
    Attributes1: TMenuItem;
    za0: TMenuItem;
    za1: TMenuItem;
    za8: TMenuItem;
    Hierarchy1: TMenuItem;
    Style1: TMenuItem;
    Panel1: TPanel;
    za2: TMenuItem;
    za3: TMenuItem;
    za4: TMenuItem;
    za5: TMenuItem;
    za6: TMenuItem;
    za7: TMenuItem;
    za9: TMenuItem;
    za10: TMenuItem;
    N3: TMenuItem;
    None1: TMenuItem;
    All1: TMenuItem;
    PanelFiles: TPanel;
    Panel4: TPanel;
    FileListBox1: TFileListBox;
    FontDialog1: TFontDialog;
    Font1: TMenuItem;
    OpenDialog1: TOpenDialog;
    CompressionMethodToUse1: TMenuItem;
    Store1: TMenuItem;
    Deflate1: TMenuItem;
    Best1: TMenuItem;
    DeflationOption1: TMenuItem;
    Maximum1: TMenuItem;
    Normal1: TMenuItem;
    Fast1: TMenuItem;
    SuperFast1: TMenuItem;
    ExtractOptions1: TMenuItem;
    CreateDirs1: TMenuItem;
    RestorePath1: TMenuItem;
    Password1: TMenuItem;
    StoreOptions1: TMenuItem;
    RemoveDots1: TMenuItem;
    RecurseTree1: TMenuItem;
    StripPath1: TMenuItem;
    AddFiles1: TMenuItem;
    DeleteFiles1: TMenuItem;
    ExtractFiles1: TMenuItem;
    FreshenFiles1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    Run1: TMenuItem;
    Move1: TMenuItem;
    Freshen1: TMenuItem;
    Extract1: TMenuItem;
    Confirmations1: TMenuItem;
    Close1: TMenuItem;
    Convert1: TMenuItem;
    N4: TMenuItem;
    Default1: TMenuItem;
    FileComment1: TMenuItem;
    N5: TMenuItem;
    OS3: TMenuItem;
    OS4: TMenuItem;
    OS2: TMenuItem;
    OS1: TMenuItem;
    OS6: TMenuItem;
    OS5: TMenuItem;
    AbbreviaontheWeb1: TMenuItem;
    ShowEmptyfolders1: TMenuItem;
    TempDirectory1: TMenuItem;
    Logging1: TMenuItem;

    procedure AbMeter1Click(Sender: TObject);
    procedure AbZipOutline1ArchiveProgress(Sender: TObject; Progress: Byte;
      var Abort: Boolean);
    procedure AbZipOutline1Change(Sender: TObject);
    procedure AbZipOutline1Click(Sender: TObject);
    procedure AbZipOutline1ConfirmSave(Sender: TObject;
      var Confirm: Boolean);
    procedure AbZipOutline1DblClick(Sender: TObject);
    procedure AbZipOutline1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure AbZipOutline1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AbZipOutline1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AbZipOutline1Save(Sender: TObject);
    procedure AbZipOutline1WindowsDrop(Sender: TObject;
      FileName: string);
    procedure All1Click(Sender: TObject);
    procedure Best1Click(Sender: TObject);
    procedure Confirmations1Click(Sender: TObject);
    procedure CreateDirs1Click(Sender: TObject);
    procedure DeleteAllSelectedClick(Sender: TObject);
    procedure DirectoryEdit1Change(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FileListBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FileListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Font1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure FormResize(Sender: TObject);
    procedure Hierarchy1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItemSelectClick(Sender: TObject);
    procedure MenuItemSelectDrawItem(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; AState: TOwnerDrawState);
    procedure None1Click(Sender: TObject);
    procedure OgDaysCode1ChangeCode(Sender: TObject; Code: TCode);
    procedure OgDaysCode1Checked(Sender: TObject; Status: TCodeStatus);
    procedure OgDaysCode1GetCode(Sender: TObject; var Code: TCode);
    procedure OgDaysCode1GetKey(Sender: TObject; var Key: TKey);
    procedure OgProtectExe1Checked(Sender: TObject; Status: TExeStatus);
    procedure Open1Click(Sender: TObject);
    procedure RestorePath1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure MenuFileDeselectClick(Sender: TObject);
    procedure MenuFileDeselectAllClick(Sender: TObject);
    procedure ExtractAllSelectedClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Splitter1CanOffset(Sender: TObject; var NewOffset: Integer;
      var Accept: Boolean);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure StripPath1Click(Sender: TObject);
    procedure SuperFast1Click(Sender: TObject);
    procedure za10Click(Sender: TObject);

    procedure Delete1Click(Sender: TObject);
    procedure Extract1Click(Sender: TObject);
    procedure Freshen1Click(Sender: TObject);
    procedure Move1Click(Sender: TObject);
    procedure Password1Click(Sender: TObject);
    procedure AddFiles1Click(Sender: TObject);
    procedure FreshenFiles1Click(Sender: TObject);
    procedure SelectBaseDirectory1Click(Sender: TObject);
    procedure AbZipOutline1ArchiveItemProgress(Sender: TObject;
      Item: TAbArchiveItem; Progress: Byte; var Abort: Boolean);
    procedure AbZipOutline1NeedPassword(Sender: TObject;
      var NewPassword: AnsiString);
    procedure DeleteFiles1Click(Sender: TObject);
    procedure ExtractFiles1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure AbZipOutline1Load(Sender: TObject);
    procedure Convert1Click(Sender: TObject);
    procedure AbZipOutline1ConfirmOverwrite(var Name: string;
      var Confirm: Boolean);
    procedure Default1Click(Sender: TObject);
    procedure Contents1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure AbZipOutline1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FileListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FileListBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AbZipOutline1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Edit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OS5Click(Sender: TObject);
    procedure AbZipOutline1ConfirmProcessItem(Sender: TObject;
      Item: TAbArchiveItem; ProcessType: TAbProcessType;
      var Confirm: Boolean);
    procedure AbZipOutline1ProcessItemFailure(Sender: TObject;
      Item: TAbArchiveItem; const ProcessType: TAbProcessType;
      ErrorClass: TAbErrorClass; ErrorCode: Integer);
    procedure TempDirectory1Click(Sender: TObject);
    procedure Logging1Click(Sender: TObject);
  private
    { Private declarations }
    OutlineX, OutlineY, FileX, FileY : Integer;
    StubName : string;
    IgnoreDuplicateWarning : Boolean;
    procedure ReadIniSettings;
    procedure SaveIniSettings;
    procedure SetCaption;
    procedure UpdateMenu;
    procedure DoConfirm( Sender : TObject; Item : TAbArchiveItem;
                       var Confirm : Boolean; Caption : string );
 //   procedure GetMinMaxInfo( var Msg: TWMGetMinMaxInfo );
   //           message WM_GETMINMAXINFO;

    procedure onExcept(sender: TObject; e: Exception);
    procedure ShowPanelFiles;
    procedure HidePanelFiles;
  public
    { Public declarations }
    procedure LayoutOpen( Sender : TObject);
    var arcname,versioneinuso,codiceserialepersonale:string
  end;

var
  Form1: TForm1;
  appname:string;

implementation

{$R *.frm}

uses
  AbConst,
  AbDlgDir,
  AbDlgPwd,
  AbZBrows,
  AbZipTyp,
  dgAbout,
  IniFiles,
  Outline,
 // ShellAPI,
  UBaseDlg,
  UDemoDlg,
  unit_open,
  unit_crypt,
  unit2,
  fmwriter,
  fmreader,
  unit_crea_apri;

procedure TForm1.onExcept(sender: TObject; e: Exception);
begin
    showmessage(e.ClassName+' - '+e.Message);
end;

procedure TForm1.LayoutOpen(Sender: TObject);
begin

    FileSetAttr(AbZipOutline1.FileName, hidden);
    AbZipOutline1.Attributes := [];
    AbZipOutline1.Update;
    panel5.Hide;

(*
    DeleteAllSelected.Enabled:=true;
    MenuFileDeselectAll.Enabled:=true;
    speedbutton8.Enabled:=true;
    speedbutton9.Enabled:=true;
    speedbutton10.Enabled:=true;
    speedbutton11.Enabled:=true;
    speedbutton12.Enabled:=true;
*)
    btnsalva.Enabled:=true;
    btnsig.Enabled:=true;
    btnagg.Enabled:=true;
    btndel.Enabled:=true;
    btnestrai.Enabled:=true;

    PanelMain.Align:=alClient;
    PanelMain.Show;
end;

procedure TForm1.All1Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to Ord( High( TAbZipAttribute ) ) do
    Attributes1.Items[i].Checked := True;
  AbZipOutline1.Attributes := [zaCompressedSize, zaCompressionMethod,
                      zaCompressionRatio, zaCRC, zaExternalFileAttributes,
                      zaInternalFileAttributes, zaEncryption, zaTimeStamp,
                      zaUncompressedSize, zaVersionMade, zaVersionNeeded,
                      zaComment];
  AbZipOutline1.Update;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
//  Close;

  //showmessage('arcname = '+arcname);

  if arcname <> '' then begin
    Form1.Close1Click(Sender);
  end;
  application.terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
 FileVerInfo: TFileVersionInfo;
begin
  codiceserialepersonale:='000000';
  application.onException := onExcept;

  appname:='DataLock';

//     img_nosd.show;
//     img_sd.hide;

imagelist1.GetBitmap(8,img_sd.Picture.Bitmap);

  panel5.Align:=alClient;
 // panel5.Caption:=appname;
  panel5.Show;

  ReadIniSettings;
  SetCaption;
  UpdateMenu;
  (*
  if ParamCount > 0 then
    try
      AbZipOutline1.FileName := ParamStr( 1 );
    except
    end;
*)

  FileVerInfo:=TFileVersionInfo.Create(nil);
  try
    FileVerInfo.FileName:=paramstr(0);
    FileVerInfo.ReadFileInfo;
    (*
    showmessage('Company: '+FileVerInfo.VersionStrings.Values['CompanyName']);
    showmessage('File description: '+FileVerInfo.VersionStrings.Values['FileDescription']);
    showmessage('File version: '+FileVerInfo.VersionStrings.Values['FileVersion']);
    showmessage('Internal name: '+FileVerInfo.VersionStrings.Values['InternalName']);
    showmessage('Legal copyright: '+FileVerInfo.VersionStrings.Values['LegalCopyright']);
    showmessage('Original filename: '+FileVerInfo.VersionStrings.Values['OriginalFilename']);
    showmessage('Product name: '+FileVerInfo.VersionStrings.Values['ProductName']);
    showmessage('Product version: '+FileVerInfo.VersionStrings.Values['ProductVersion']);
    *)
    versioneinuso:=FileVerInfo.VersionStrings.Values['FileVersion'];


  finally
    FileVerInfo.Free;
    appname:=appname + ' - v.'+versioneinuso;
    caption:= appname
  end;

  OgDaysCode1.AutoCheck:=true;
  OgDaysCode1.AutoDecrease:=true;


end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String
  );
var
  i: Integer;

begin
//    showmessage(filenames[0]);
    if AbZipOutline1.FileName='' then begin

      SpeedButton16Click(Sender);
    end;

  for i := Low(FileNames) to High(FileNames) do  begin

    if (extractfileext(filenames[i])<>'.sd') and (DirectoryExists(FileNames[i]) = false) then
    AbZipOutline1.AddFiles( FileNames[i], 0 );
    (*
    else
      showmessage('Non puoi aggiungere altri archivi NK...');
      continue;
    *)


    if DirectoryExists(FileNames[i]) then begin
         AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions + [soRecurse] - [soStripPath];
        AbZipOutline1.BaseDirectory := FileNames[i];
        AbZipOutline1.AddFiles( '*.*', 0 );
    end;


  end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin

end;

procedure TForm1.Hierarchy1Click(Sender: TObject);
begin
  Hierarchy1.Checked := not Hierarchy1.Checked;
  AbZipOutline1.Hierarchy := Hierarchy1.Checked;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  SpeedButton16Click(Sender);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 // form_crypt.ShowModal;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
var item:integer;
begin
  abzipoutline1.SelectedZipItem.Tagged:=false;
  item := listboxtagged.Items.IndexOf(abzipoutline1.SelectedZipItem.FileName);
  if item >= 0 then listboxtagged.Items.Delete(item);
end;

procedure TForm1.ShowPanelFiles;
begin
  PanelMain.Align:=alLeft;
  PanelMoveFiles.Show;
  Splitter1.Show;
  PanelFiles.Show;
end;

procedure TForm1.HidePanelFiles;
begin
  PanelMain.Align:=alClient;
  PanelMoveFiles.Hide;
  Splitter1.Hide;
  PanelFiles.Hide;
end;


procedure TForm1.MenuItemSelectClick(Sender: TObject);
begin
  abzipoutline1.SelectedZipItem.Tagged := True;
  //showmessage(inttostr(listboxtagged.Items.IndexOf(abzipoutline1.SelectedZipItem.FileName)));
  if listboxtagged.Items.IndexOf(abzipoutline1.SelectedZipItem.FileName) < 0 then
  listboxtagged.Items.Add(abzipoutline1.SelectedZipItem.FileName);
  ShowPanelFiles;
  //showmessage(abzipoutline1.SelectedZipItem.FileName+', selected');
end;

procedure TForm1.MenuItemSelectDrawItem(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; AState: TOwnerDrawState);
begin

end;

procedure TForm1.None1Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 0 to pred( Attributes1.Count ) do
    Attributes1.Items[i].Checked := False;
  AbZipOutline1.Attributes := [];
  AbZipOutline1.Update;
end;

procedure TForm1.OgDaysCode1ChangeCode(Sender: TObject; Code: TCode);
var
  Ini  : TIniFile;
  S    : string;
begin
  (*
  Ini := TIniFile.Create('ONGUARD.INI');
  try
    {store the days code in the ini file}
    S := BufferToHex(Code, SizeOf(Code));
    Ini.WriteString('Codes', 'DaysCode', S);
    //CodeLbl.Caption := S;

    {tell the code component to test the new code, reporting the results}
    OgDaysCode1.CheckCode(True);
  finally
    Ini.Free;
  end;
  *)
end;

procedure TForm1.OgDaysCode1Checked(Sender: TObject; Status: TCodeStatus);
var
  S : string;
begin

  case Status of
    ogValidCode    : S := 'Registrato - Giorni rimanenti: ' + IntToStr(OgDaysCode1.GetValue);
    ogInvalidCode  : S := 'Registrazione non valida';
    ogPastEndDate  : S := 'Registrazione scaduta';
    ogDayCountUsed : S := 'Zero giorni di uso rimanenti';
    ogRunCountUsed : S := 'Numero di esecuzioni superato';
    ogNetCountUsed : S := 'Numero di accessi rete superato';
    ogCodeExpired  : S := 'Registrazione scaduta';
  else
    S := 'Errore di registrazione';
  end;
  StatusLbl.Caption := S;
//  OgDaysCode1.Decrease;
end;

procedure TForm1.OgDaysCode1GetCode(Sender: TObject; var Code: TCode);
var
  Ini : TIniFile;
  S   : string;
begin
  (*
  Ini := TIniFile.Create('ONGUARD.INI');
  try
    {get the days code from the ini file}
    S := Ini.ReadString('Codes', 'DaysCode', '');
    {convert to proper form}
    HexToBuffer(S, Code, SizeOf(Code));
    {set code label caption}
//    CodeLbl.Caption := S;
  finally
    Ini.Free;
  end;
  *)
    S := ReaderForm.editcodregistraz.Text;
    HexToBuffer(S, Code, SizeOf(Code));
end;

procedure TForm1.OgDaysCode1GetKey(Sender: TObject; var Key: TKey);
const
  {this applications' key}
  CKey : TKey = ($E5,$8F,$84,$D6,$92,$C9,$A4,$D8,$1A,$FA,$6F,$8D,$AB,$FC,$DF,$B4);
begin
  Key := CKey;

end;

procedure TForm1.OgProtectExe1Checked(Sender: TObject; Status: TExeStatus);
var
  S : string;
begin
  case Status of
    exeSuccess         : S := 'EXE file is OK';
    exeSizeError       : S := 'EXE file size has changed';
    exeIntegrityError  : S := 'EXE Integrity Error';
    exeNotStamped      : S := 'EXE file is not stamped';
  else
    S := 'Unknown error';
  end;
  StatusLbl.Caption := S;

end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  AbZipOutline1.Password:=form_crypt.KeyStr+codiceserialepersonale;
  AbZipOutline1.Save;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  PanelFiles.Visible:= not PanelFiles.Visible;
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  if arcname <> '' then begin
    showmessage('Sign the folder before opening a new one...');
    exit;
  end;
  (*
  if savedialog1.Execute then  begin
    AbZipOutline1.BaseDirectory:=extractfilepath(savedialog1.filename);
    AbZipOutline1.Password:=form_crypt.KeyStr+codiceserialepersonale;
    AbZipOutline1.FileName:=savedialog1.FileName;
    arcname:=savedialog1.FileName;
    LayoutOpen(sender);
  end;
  *)
    if form_creaapri.ShowModal = mrOk then  begin
      AbZipOutline1.BaseDirectory:=extractfilepath(form_creaapri.FileNameEdit1.FileName);
      codiceserialepersonale:=form_creaapri.editserialepersonale.Text;
      AbZipOutline1.Password:=form_crypt.KeyStr+codiceserialepersonale;
      //showmessage('keycrypt '+form_crypt.KeyStr+' codserialepersonale '+codiceserialepersonale);
      AbZipOutline1.FileName:=form_creaapri.FileNameEdit1.FileName;
      arcname:=form_creaapri.FileNameEdit1.FileName;
      LayoutOpen(sender);
    end;

end;

procedure TForm1.MenuFileDeselectClick(Sender: TObject);
var item:integer;
    abitem:tabarchiveitem;
begin
  abzipoutline1.SelectedZipItem.Tagged:=false;
  showmessage(listboxtagged.Items[listboxtagged.ItemIndex]);

  abitem:=Tabarchiveitem.Create;
  abitem.FileName:=listboxtagged.Items[listboxtagged.ItemIndex];
  item := abzipoutline1.FindItem(abitem);
  if item >= 0 then begin
    abzipoutline1.Items[item].Tagged := False;
    showmessage('da listbox '+listboxtagged.Items[listboxtagged.ItemIndex]);
    showmessage('da zip '+abzipoutline1.Items[item].FileName);
    showmessage('deselezionato, elimino da listboxtagged '+ listboxtagged.Items[listboxtagged.ItemIndex]);
    listboxtagged.DeleteSelected;

  end;
  ShowPanelFiles;
end;

procedure TForm1.MenuFileDeselectAllClick(Sender: TObject);
var nitem, item:integer;
begin
  for nitem:=0 to listboxtagged.Count-1 do begin
       item := abzipoutline1.FindFile(listboxtagged.Items[0]);
       if item >= 0 then begin
         abzipoutline1.Items[item].Tagged := False;
         listboxtagged.items.Delete(0);
       end;
  end;
  abzipoutline1.ClearTags;
end;

procedure TForm1.ExtractAllSelectedClick(Sender: TObject);
begin
//  if AbZipOutline1.SelectedZipItem <> nil then begin
  if listboxtagged.Items.Count > 0 then begin
    BaseDirDlg := TBaseDirDlg.Create( Application );
    try
      with BaseDirDlg, AbZipOutline1 do begin
        BaseDirDlg.Caption := 'Extract Selected Files';
        directoryEdit1.Text := BaseDirectory;
        directoryEdit1.Enabled := true;
        label1.Caption := 'Target Directory:';
        CheckBox1.Caption := 'Restore Path';
        CheckBox1.Checked := eoRestorePath in ExtractOptions;
        CheckBox2.Caption := 'Create Directories';
        CheckBox2.Checked := eoCreateDirs in ExtractOptions;
        ShowModal;
        if ModalResult = mrOK then begin
          BaseDirectory := directoryedit1.directory;
          if CheckBox1.Checked then
            ExtractOptions := ExtractOptions + [eoRestorePath]
          else
            ExtractOptions := ExtractOptions - [eoRestorePath];
          if CheckBox2.Checked then
            ExtractOptions := ExtractOptions + [eoCreateDirs]
          else
            ExtractOptions := ExtractOptions - [eoCreateDirs];
          //ClearTags;
          //SelectedZipItem.Tagged := True;
          try
            ExtractTaggedItems;
          finally
            ClearTags;
          end;
          FileListBox1.Update;
        end;
      end;
    finally
      BaseDirDlg.Free;
    end;
  end else showmessage('No file selected');
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  if panelfiles.Visible then HidePanelFiles else ShowPanelFiles;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
 // form_crypt.show;
end;

procedure TForm1.Splitter1CanOffset(Sender: TObject; var NewOffset: Integer;
  var Accept: Boolean);
begin

end;

procedure TForm1.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  if Panel = StatusBar.Panels[1] then
  with abmeter1 do begin
    Top := Rect.Top;
    Left := Rect.Left;
    Width := Rect.Right - Rect.Left - 15;
    Height := Rect.Bottom - Rect.Top;
  end;
end;

procedure TForm1.SetCaption;
begin

  if AbZipOutline1.FileName <> '' then
  Caption := appname + ' - ' +
             AbZipOutline1.FileName
  else
    Caption:=appname;
end;

procedure TForm1.UpdateMenu;
var
  i : TAbZipAttribute;
begin
  with AbZipOutline1 do begin
    i := Low( TAbZipAttribute );
    while i <> High( TAbZipAttribute ) do begin
      Attributes1.Items[Ord(i)].Checked := i in Attributes;
      i := succ( i );
    end;
    Hierarchy1.Checked := Hierarchy;
//    OS1.Checked := Ord( OutlineStyle ) = 0;
//    OS2.Checked := Ord( OutlineStyle ) = 1;
//    OS3.Checked := Ord( OutlineStyle ) = 2;
//    OS4.Checked := Ord( OutlineStyle ) = 3;
//    OS5.Checked := Ord( OutlineStyle ) = 4;
//    OS6.Checked := Ord( OutlineStyle ) = 5;

    Best1.Checked := CompressionMethodToUse = smBestMethod;
    Deflate1.Checked := CompressionMethodToUse = smDeflated;
    Store1.Checked := CompressionMethodToUse = smStored;
    {deflation options}
    Normal1.Checked := DeflationOption = doNormal;
    Maximum1.Checked := DeflationOption = doMaximum;
    Fast1.Checked := DeflationOption = doFast;
    SuperFast1.Checked := DeflationOption = doSuperFast;
    {extractOptions}
    CreateDirs1.Checked := eoCreateDirs in ExtractOptions;
    RestorePath1.Checked := eoRestorePath in ExtractOptions;
    {StoreOptions}
    RecurseTree1.Checked := soRecurse in StoreOptions;
    StripPath1.Checked := soStripPath in StoreOptions;
    RemoveDots1.Checked := soRemoveDots in StoreOptions;
  end;
end;

procedure TForm1.za10Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Item := (Sender as TMenuItem);
  Item.Checked := not Item.Checked;
  with AbZipOutline1 do
    if Item.Checked then
      Attributes := Attributes + [TAbZipAttribute( Item.Tag )]
    else
      Attributes := Attributes - [TAbZipAttribute( Item.Tag )];
  AbZipOutline1.Update;
end;

procedure TForm1.Font1Click(Sender: TObject);
begin
  if FontDialog1.Execute then
    with FontDialog1 do begin
      AbZipOutline1.Font := Font;
     // DirectoryListBox1.Font := Font;
      FileListBox1.Font := Font;
     // DriveComboBox1.Font := Font;
    //  FilterComboBox1.Font := Font;
    end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin

  if abzipoutline1.FileName <> '' then  begin
    //showmessage('Sigillo l''archivio prima di chiudere...');
    Close1Click(Sender);
  end;
end;

procedure TForm1.Open1Click(Sender: TObject);
var f:string;
begin
  (*
  if OpenDialog1.Execute then begin
    AbZipOutline1.FileName := OpenDialog1.FileName;
    FileSetAttr(OpenDialog1.FileName, hidden);
    AbZipOutline1.Attributes := [];
    AbZipOutline1.Update;
    panel5.Hide;

    PanelMain.Align:=alClient;
    PanelMain.Show;
  end;
  *)

//  Close1Click(Sender);
  (*
  form_open.Parent:=panel5;
  form_open.Align:=alClient;
  form_open.Show;
  *)
(*
  form2.Parent:=panel5;
  form2.Align:=alClient;
  form2.Show;
*)



  if arcname <> '' then begin
    showmessage('Sign the folder before opening a new one...');
    exit;
  end;

  if opendialog1.Execute then begin
//   if form_creaapri.ShowModal=mrOk then begin
      form1.AbZipOutline1.CloseArchive;

    arcname:=opendialog1.FileName;

  ReaderForm.cReaderFile:=opendialog1.FileName;
 // ReaderForm.cReaderFile:=form_creaapri.FileNameEdit1.Text;
  ReaderForm.Button1Click(sender);
  //ReaderForm.Button2Click(sender);
  //showmessage(ReaderForm.memData.Text);

//     img_nosd.show;
//     img_sd.hide;

     imagelist1.GetBitmap(8,img_sd.Picture.Bitmap);


  if  ReaderForm.memData.Lines.Count>0 then  begin
  if  ReaderForm.memData.Lines[0] = 'DataLck' then begin
     //showmessage('Cartella con sigillo DataLock');

//     img_nosd.hide;
//     img_sd.show;

       imagelist1.GetBitmap(10,img_sd.Picture.Bitmap);

//     showmessage('Rimuovo il sigillo Datalck prima di decifrarlo');

     //verifico se il codiceseriale del sigillo è quello di default

     //showmessage('cod serial'+ReaderForm.editcodserial.Text);

  //showmessage('Codice personale richiesto');
  if ReaderForm.editcodserial.Text <> codiceserialepersonale then
        InputQuery('Codice personale del file', '', TRUE, codiceserialepersonale);

  if codiceserialepersonale <> ReaderForm.editcodserial.Text then
    begin
         showmessage('Codice Personale del File non valido!');
         arcname:='';
         imagelist1.GetBitmap(8,img_sd.Picture.Bitmap);
         exit;
    end;




     //exit;

     form1.arcname:=opendialog1.FileName;

     WriterForm.cReaderFile:=opendialog1.FileName;
     WriterForm.btnDeleteClick(sender);

  form_crypt.boxInputFile.FileName:=form1.arcname;
  form_crypt.boxOutputFile.FileName:=form1.arcname+'x';
//  showmessage('main form key crypt '+form_crypt.KeyStr);
  form_crypt.btnDecryptClick(sender);


  if fileexists(form_crypt.boxOutputFile.FileName) then begin
    deletefile(form_crypt.boxInputFile.FileName);
    renamefile(form_crypt.boxOutputFile.FileName, form_crypt.boxInputFile.FileName);
  end;
  end;

  end
  else begin
    showmessage('Cartella priva del sigillo DataLock, nessuna garanzia di recupero dei dati');
    showmessage('Si consiglia di apporre sigillo DataLock sempre quando si chiude una cartella');

  end;

  form1.AbZipOutline1.BaseDirectory:=extractfilepath(opendialog1.FileName);
  try
  AbZipOutline1.FileName:=opendialog1.FileName;
  AbZipOutline1.Password:=form_crypt.KeyStr+codiceserialepersonale;

  except
    showmessage('Sigillo non riconosciuto, non è detto che sia possibile recuperare i dati.');
  end;
//  form1.AbZipOutline1.Password:='123456';
//  showmessage('Password della cartella: '+form1.AbZipOutline1.Password);;

//  showmessage(filelistbox1.FileName);
  form1.LayoutOpen(sender);
//  showmessage('qui');
  end;
end;

procedure TForm1.AbZipOutline1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TFileListBox;
end;

procedure TForm1.AbZipOutline1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  i, j : Integer;
  ZB : TAbZipBrowser;
  IsZip : Boolean;
  ZipName : string;
begin
  if Source is TFileListBox then
    with (Source as TFileListBox ) do
      if SelCount = 1 then begin
        for i := 0 to pred( Items.Count ) do
          if FileListBox1.Selected[i] then begin
            IsZip := False;
            ZB := TAbZipBrowser.Create( Self );
            try
              try
//                ZB.ArchiveType:=atZip;
                ZB.FileName := Directory + '\' + Items[i];
                IsZip := True;
              except
  //              showmessage('non è uno zip');
              end;
            finally
              ZB.Free;
            end;
            if IsZip then
              {only one file, and it is a zip file}
              AbZipOutline1.FileName := Directory + '\' + Items[i]
            else if AbZipOutline1.FileName <> '' then
              {only one file, and it's not a zip file}
              AbZipOutline1.AddFiles( Directory + '\' + Items[i], 0 )
            else begin
              if OpenDialog1.Execute then begin
                AbZipOutline1.FileName := OpenDialog1.FileName;
                AbZipOutline1.AddFiles( Directory + '\' + Items[i], 0 );
              end;
            end;
            break;
          end;
      end
      else begin
        {multiple files dropped...}
        IsZip := False;
        ZB := TAbZipBrowser.Create( Self );
        try
          for i := 0 to pred( Items.Count ) do
            if FileListBox1.Selected[i] then begin
              try
                ZB.FileName := Directory + '\' + Items[i];
                IsZip := True;
                ZipName := ZB.FileName;
                break;
              except
              end;
            end;
        finally
          ZB.Free;
        end;
        if IsZip and ( Application.MessageBox( 
                     'One of the dropped files is a Zip Archive. Open it?',
                     'Open or Add Files?',
                     MB_YESNO ) = IDYES ) then
            AbZipOutline1.FileName := ZipName
        else begin
          if AbZipOutline1.FileName <> '' then begin
            for i := 0 to pred( Items.Count ) do
              if FileListBox1.Selected[i] then
                AbZipOutline1.AddFiles( Directory + '\' + Items[i], 0 );
          end
          else begin
            if OpenDialog1.Execute then begin
              AbZipOutline1.FileName := OpenDialog1.FileName;
              for j := 0 to pred( Items.Count ) do
                if FileListBox1.Selected[j] then
                  AbZipOutline1.AddFiles( Directory + '\' + Items[j], 0 )
            end;
          end;
        end;
      end;
end;

procedure TForm1.AbZipOutline1DblClick(Sender: TObject);
(*
var
  Restoring : Boolean;
  zFileName : array[0..79] of Char;
  TempDir, SaveDir : string;
  TempPath : array [0..255] of Char;
  TempName : string;
  *)
begin




  (*
  //GetTempPath( sizeof( TempPath ), TempPath );
//  SaveDir := StrPas( TempPath );
    SaveDir := extractfilepath(application.ExeName);
  if SaveDir[Length(SaveDir)] = '\' then
    Delete( SaveDir, Length(SaveDir), 1 );
  StrPCopy( TempPath, SaveDir );

  with AbZipOutline1 do begin
    if SelectedZipItem <> nil then begin
      TempDir := BaseDirectory;
      Restoring := eoRestorePath in ExtractOptions;
      ExtractOptions := ExtractOptions - [eoRestorePath];
      BaseDirectory := SaveDir;
      try
        ExtractFiles( SelectedZipItem.FileName );
        TempName := SelectedZipItem.FileName;
//        AbUnfixName( TempName OpenDocument(StrPCopy( zFileName, ExtractFileName( TempName ) ));SHOWNORMAL );
      finally
        BaseDirectory := TempDir;
        if Restoring then
          ExtractOptions := ExtractOptions + [eoRestorePath];
      end;
    end;
  end;
 *)
end;

procedure TForm1.AbZipOutline1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
  PS, PC : TPoint;
begin
(*
  if Button = mbLeft then begin
    OutlineX := X;
    OutlineY := Y;
  end
  else
  *)
  if Button = mbRight then begin
    {enable appropriate popup menu items.}
    {prepare popup menu}
    (*
    if AbZipOutline1.Count > 0 then begin
      {there are items in the outline - select the item under the mouse}
      i := AbZipOutline1.GetOutlineItem( X, Y );
      if i <> -1 then
        AbZipOutline1.SelectedItem := i;
    end;
    *)
    if AbZipOutline1.SelectedZipItem <> nil then begin
      PC.X := X;
      PC.Y := Y;
      PS := AbZipOutline1.ClientToScreen( PC );
      AbZipOutline1.PopupMenu.Popup( PS.X, PS.Y );
    end;
  end;

end;

procedure TForm1.AbZipOutline1Save(Sender: TObject);
begin

end;

procedure TForm1.FileListBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TAbZipOutline;
end;

procedure TForm1.FileListBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  TempDir : string;
begin
  if Source is TAbZipOutline then
    with (Source as TAbZipOutline ) do begin
      TempDir := BaseDirectory;
      BaseDirectory := FileListBox1.Directory;
      try
        ExtractFiles( SelectedZipItem.FileName );
        FileListBox1.Update;
      finally
        BaseDirectory := TempDir;
      end;
    end;
end;

procedure TForm1.AbZipOutline1WindowsDrop(Sender: TObject;
  FileName: string);
var
  ZB : TAbZipBrowser;
  IsZip : Boolean;
begin
  IsZip := False;
  ZB := TAbZipBrowser.Create( Self );
  try
    try
      ZB.FileName := FileName;
      IsZip := True;
    except
    end;
  finally
    ZB.Free;
  end;

  if IsZip and ( AbZipOutline1.FileName = '' ) then
    AbZipOutline1.FileName := FileName
  else if AbZipOutline1.FileName = '' then begin
    if OpenDialog1.Execute then begin
      AbZipOutline1.FileName := OpenDialog1.FileName;
      AbZipOutline1.AddFiles( FileName, 0 );
    end;
  end
  else begin
    {This is a Zip file, but there's already an open archive}
    if Application.MessageBox( 'Open this file as an archive?',
                   'Open or Add File', MB_YESNO ) = IDYES then
      AbZipOutline1.FileName := FileName
    else
      AbZipOutline1.AddFiles( FileName, 0 );
  end;
end;

procedure TForm1.Best1Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Store1.Checked := False;
  Deflate1.Checked := False;
  Best1.Checked := False;
  Item := (Sender as TMenuItem);
  Item.Checked := True;
  AbZipOutline1.CompressionMethodToUse := TAbZipSupportedMethod( Item.Tag );
end;

procedure TForm1.SuperFast1Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Normal1.Checked := False;
  Maximum1.Checked := False;
  Fast1.Checked := False;
  SuperFast1.Checked := False;
  Item := (Sender as TMenuItem);
  Item.Checked := True;
  AbZipOutline1.DeflationOption := TAbZipDeflationOption( Item.Tag );
end;

procedure TForm1.CreateDirs1Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Item := Sender as TMenuItem;
  Item.Checked := not Item.Checked;
  if Item.Checked then
    AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions +
                                    [eoCreateDirs]
  else
    AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions -
                                    [eoCreateDirs];
end;

procedure TForm1.DeleteAllSelectedClick(Sender: TObject);
var nitem:integer;
begin
  if listboxtagged.Items.Count > 0 then begin
     abzipoutline1.DeleteTaggedItems;
     for nitem:=0 to listboxtagged.Count-1 do listboxtagged.items.Delete(0);
  end else showmessage('No file selected');
end;

procedure TForm1.DirectoryEdit1Change(Sender: TObject);
begin
  Edit1Exit(Sender);
end;

procedure TForm1.RestorePath1Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Item := Sender as TMenuItem;
  Item.Checked := not Item.Checked;
  if Item.Checked then
    AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions +
                                    [eoRestorePath]
  else
    AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions -
                                    [eoRestorePath];
end;

procedure TForm1.StripPath1Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  Item := Sender as TMenuItem;
  Item.Checked := not Item.Checked;
  if Item.Checked then
    AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions +
                                  [TAbStoreOption(Item.Tag)]
  else
    AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions -
                                  [TAbStoreOption(Item.Tag)];
end;

procedure TForm1.AbZipOutline1Change(Sender: TObject);
begin
  (*
  if AbZipOutline1.FileName <> '' then
    ArchiveLabel.Caption := Format( 'Archive %s contains %d items.',
                              [AbZipOutline1.FileName, AbZipOutline1.Count] )
  else
    ArchiveLabel.Caption := 'No Archive Open';

end;
      *)
end;

procedure TForm1.AbZipOutline1Click(Sender: TObject);
begin
//  MenuItemSelect.Checked:=AbZipOutline1.SelectedZipItem.Tagged;
end;

procedure TForm1.AbMeter1Click(Sender: TObject);
begin

end;

procedure TForm1.AbZipOutline1ArchiveProgress(Sender: TObject; Progress: Byte;
  var Abort: Boolean);
begin
  abprogressbar1.Position:=Progress;
  if progress=100 then abprogressbar1.Position:=0;
end;

procedure TForm1.Confirmations1Click(Sender: TObject);
begin
  Confirmations1.Checked := not Confirmations1.Checked;
  //SpeedButton7.Down := Confirmations1.Checked;
end;

procedure TForm1.DoConfirm( Sender : TObject; Item : TAbArchiveItem;
                            var Confirm : Boolean; Caption : string );
var
  pMessage : array [0..255] of Char;
  pCaption : array [0..80] of Char;
begin
  if Confirmations1.Checked then
    Confirm :=  MessageBox( 0,
                            StrPCopy( pMessage,
                                      Format( '%s %s?',
                                      [Caption, Item.FileName] ) ),
                            StrPCopy( pCaption, 'Confirmation' ),
                            MB_ICONQUESTION or MB_OKCANCEL ) = IDOK;
end;

procedure TForm1.AbZipOutline1ConfirmSave(Sender: TObject;
  var Confirm: Boolean);
var
  pMessage : array [0..255] of Char;
  pCaption : array [0..80] of Char;
begin
  if Confirmations1.Checked then
    Confirm :=  MessageBox( 0,
                            StrPCopy( pMessage,
                                      Format( 'Save %s?',
                                      [TAbZipOutline(Sender).FileName] ) ),
                            StrPCopy( pCaption, 'Confirmation' ),
                            MB_ICONQUESTION or MB_OKCANCEL ) = IDOK;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  if AbZipOutline1.SelectedZipItem <> nil then
    with AbZipOutline1 do begin
      AbZipOutline1.ClearTags;
      SelectedZipItem.Tagged := True;
      try
        DeleteTaggedItems;
        showmessage('File(s) Deleted');
      finally
        ClearTags;
      end;
    end;
end;

procedure TForm1.Extract1Click(Sender: TObject);
begin
  if AbZipOutline1.SelectedZipItem <> nil then begin
    BaseDirDlg := TBaseDirDlg.Create( Application );
    try
      with BaseDirDlg, AbZipOutline1 do begin
        BaseDirDlg.Caption := 'Extract Selected File';
        directoryEdit1.Text := BaseDirectory;
        directoryEdit1.Enabled := true;
        label1.Caption := 'Target Directory:';
        CheckBox1.Caption := 'Restore Path';
        CheckBox1.Checked := eoRestorePath in ExtractOptions;
        CheckBox2.Caption := 'Create Directories';
        CheckBox2.Checked := eoCreateDirs in ExtractOptions;
        ShowModal;
        if ModalResult = mrOK then begin
          BaseDirectory := directoryedit1.directory;
          if CheckBox1.Checked then
            ExtractOptions := ExtractOptions + [eoRestorePath]
          else
            ExtractOptions := ExtractOptions - [eoRestorePath];
          if CheckBox2.Checked then
            ExtractOptions := ExtractOptions + [eoCreateDirs]
          else
            ExtractOptions := ExtractOptions - [eoCreateDirs];
          //ClearTags;
          SelectedZipItem.Tagged := True;
          try
            ExtractTaggedItems;
          finally
            ClearTags;
          end;
          FileListBox1.Update;
        end;
      end;
    finally
      BaseDirDlg.Free;
    end;
  end else showmessage('No file selected');
end;

procedure TForm1.Freshen1Click(Sender: TObject);
begin
  (*
  if AbZipOutline1.SelectedZipItem <> nil then begin
    BaseDirDlg := TBaseDirDlg.Create( Application );
    try
      with BaseDirDlg, AbZipOutline1 do begin
        Caption := 'Freshen Selected File';
        directoryEdit1.Text := SelectedZipItem.FileName;
        directoryEdit1.Enabled := False;
        Caption := 'Source Directory:';
       // if BaseDirectory <> '' then
       //   DLB.Directory := BaseDirectory;
        CheckBox1.Caption := 'Recurse';
        CheckBox1.Checked := soRecurse in StoreOptions;
        CheckBox2.Caption := 'Strip Path';
        CheckBox2.Checked := soStripPath in StoreOptions;

        ShowModal;
        if ModalResult = mrOK then begin
          if CheckBox1.Checked then
            StoreOptions := StoreOptions + [soRecurse]
          else
            StoreOptions := StoreOptions - [soRecurse];
          if CheckBox2.Checked then
            StoreOptions := StoreOptions + [soStripPath]
          else
            StoreOptions := StoreOptions - [soStripPath];
          BaseDirectory := DirLabel.Caption;

          ClearTags;
          SelectedZipItem.Tagged := True;
          try
            FreshenTaggedItems;
          finally
            ClearTags;
          end;
          FileListBox1.Update;
        end;
      end;
    finally
      BaseDirDlg.Free;
    end;
  end;

end;
    *)
end;

procedure TForm1.Move1Click(Sender: TObject);
begin
  DemoDlg := TDemoDlg.Create( Application );
  try
    with DemoDlg do begin
      Caption := 'Move File to New Path';
      Edit1.Text := AbZipOutline1.SelectedZipItem.FileName;
      ShowModal;
      if ModalResult = mrOK then
        AbZipOutline1.Move( AbZipOutline1.SelectedZipItem, Edit1.Text );
    end;
  finally
    DemoDlg.Free;
  end;
end;

procedure TForm1.Password1Click(Sender: TObject);
var
  Dlg : TPassWordDlg;
begin
  Dlg := TPassWordDlg.Create( Application );
  try
    Dlg.Edit1.Text := string(AbZipOutline1.Password);
    Dlg.ShowModal;
    if Dlg.ModalResult = mrOK then
      AbZipOutline1.Password := AnsiString(Dlg.Edit1.Text);
  finally
    Dlg.Free;
  end;
(*
  if Length( AbZipOutline1.Password ) > 0 then
    Image1.Visible := True
  else
    Image1.Visible := False;
*)
end;

procedure TForm1.AddFiles1Click(Sender: TObject);
begin
  BaseDirDlg := TBaseDirDlg.Create( Application );
  try
    with BaseDirDlg, AbZipOutline1 do begin
      BaseDirDlg.caption := 'Add Directory';
      //directoryEdit1.Text := directoryEdit1.Text+'*.*';
      label1.Caption := 'Directory Path';
      CheckBox1.Caption := 'Recursive';
      CheckBox1.Checked := soRecurse in StoreOptions;
      CheckBox2.Caption := 'Remove Path';
      CheckBox2.Checked := soStripPath in StoreOptions;

      //if BaseDirectory <> '' then
     //   DLB.Directory := BaseDirectory;

      ShowModal;
      if ModalResult = mrOK then begin

        if CheckBox1.Checked then
          StoreOptions := StoreOptions + [soRecurse]
        else
          StoreOptions := StoreOptions - [soRecurse];
        if CheckBox2.Checked then
          StoreOptions := StoreOptions + [soStripPath]
        else
          StoreOptions := StoreOptions - [soStripPath];
        BaseDirectory := directoryedit1.Directory;
        AddFiles( '*.*', 0 );
      end;
    end;
  finally
    BaseDirDlg.Free;
  end;
end;

procedure TForm1.FreshenFiles1Click(Sender: TObject);
begin
//  BaseDirDlg := TBaseDirDlg.Create( Application );
//  try
    with BaseDirDlg, AbZipOutline1 do begin
      BaseDirDlg.Caption := 'Freshen Files';
      directoryEdit1.Text := '*.*';
      label1.Caption := 'Source Directory';
      CheckBox1.Caption := 'Recursive';
      CheckBox1.Checked := soRecurse in StoreOptions;
      CheckBox2.Caption := 'Remove Path';
      CheckBox2.Checked := soStripPath in StoreOptions;
     //showmessage('vado');
      //if BaseDirectory <> '' then
      //  DLB.Directory := BaseDirectory;

      ShowModal;
      if ModalResult = mrOK then begin
        if CheckBox1.Checked then
          StoreOptions := StoreOptions + [soRecurse]
        else
          StoreOptions := StoreOptions - [soRecurse];
        if CheckBox2.Checked then
          StoreOptions := StoreOptions + [soStripPath]
        else
          StoreOptions := StoreOptions - [soStripPath];
        BaseDirectory := directoryedit1.Directory;
        FreshenFiles( '*.*' );
      end;
    end;
//  finally
//    BaseDirDlg.Free;
//  end;
end;

procedure TForm1.SelectBaseDirectory1Click(Sender: TObject);
begin
       {
  with TAbDirDlg.Create(Self) do begin
    Caption := 'Directory';
    AdditionalText := 'Select folder to extract into';
    if Execute then
      AbZipOutline1.BaseDirectory := SelectedFolder;
    Free;
  end;  }
end;

procedure TForm1.AbZipOutline1ArchiveItemProgress(Sender: TObject;
  Item: TAbArchiveItem; Progress: Byte; var Abort: Boolean);
var
  ActionString : string;
begin
  case Item.Action of
    aaAdd : ActionString := 'Adding  ';
    aaFreshen : ActionString := 'Freshening  ';
    aaDelete  : ActionString := 'Deleting  ';
  else
    ActionString :='Extracting  ';
  end;
  //label1.caption := ActionString + Item.FileName + '   ';
  memo1.Lines.Add(ActionString + Item.FileName);
  if Progress = 100 then begin
    label1.caption := '';
    abmeter2.Reset;
  end;
end;

procedure TForm1.AbZipOutline1NeedPassword(Sender: TObject;
  var NewPassword: AnsiString);
var
  Dlg : TPassWordDlg;
begin
  Dlg := TPassWordDlg.Create( Application );
  try
    Dlg.ShowModal;
    if Dlg.ModalResult = mrOK then
      NewPassword := AnsiString(Dlg.Edit1.Text);
  finally
    Dlg.Free;
  end;

//  if Length( NewPassword ) > 0 then
//    Image1.Visible := True;
end;

procedure TForm1.DeleteFiles1Click(Sender: TObject);
begin

  DemoDlg := TDemoDlg.Create( Application );
  try
    with DemoDlg do begin
      Caption := 'Delete Files with FileMask';
      Edit1.Text := '*.*';
      ShowModal;
      if ModalResult = mrOK then
        AbZipOutline1.DeleteFiles( Edit1.Text );
    end;
  finally
    DemoDlg.Free;
  end;

  //Delete1Click(Sender);
end;

procedure TForm1.ExtractFiles1Click(Sender: TObject);
begin
  BaseDirDlg := TBaseDirDlg.Create( Application );
  try
    with BaseDirDlg, AbZipOutline1 do begin
      BaseDirDlg.Caption := 'Extract All Files';
      directoryEdit1.Text := BaseDirectory;
      label1.Caption := 'Target Directory:';
      CheckBox1.Caption := 'Restore Path';
      CheckBox1.Checked := eoRestorePath in ExtractOptions;
      CheckBox2.Caption := 'Create Directories';
      CheckBox2.Checked := eoCreateDirs in ExtractOptions;
      ShowModal;
      if ModalResult = mrOK then begin
        BaseDirectory := BaseDirDlg.DirectoryEdit1.Directory;
        if CheckBox1.Checked then
          ExtractOptions := ExtractOptions + [eoRestorePath]
        else
          ExtractOptions := ExtractOptions - [eoRestorePath];
        if CheckBox2.Checked then
          ExtractOptions := ExtractOptions + [eoCreateDirs]
        else
          ExtractOptions := ExtractOptions - [eoCreateDirs];

        ExtractFiles( '*.*' );
        FileListBox1.Update;
      end;
    end;
  finally
    BaseDirDlg.Free;
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  AbZipOutline1.Save;
  SaveIniSettings;
end;

procedure TForm1.ReadIniSettings;
var
  Value : Integer;
  Exists : Boolean;
begin
  with TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) ) do begin
    try
      {view menu}
      Exists := ReadBool( 'General', 'Exists', False );
      if Exists then begin
        AbZipOutline1.Attributes := [];
        if ReadBool( 'View', 'CSize', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaCompressedSize];
        if ReadBool( 'View', 'CMethod', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaCompressionMethod];
        if ReadBool( 'View', 'CRatio', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaCompressionRatio];
        if ReadBool( 'View', 'CRC', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaCRC];
        if ReadBool( 'View', 'EFA', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaExternalFileAttributes];
        if ReadBool( 'View', 'IFA', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaInternalFileAttributes];
        if ReadBool( 'View', 'Encryption', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaEncryption];
        if ReadBool( 'View', 'TimeStamp', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaTimeStamp];
        if ReadBool( 'View', 'USize', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaUnCompressedSize];
        if ReadBool( 'View', 'MadeBy', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaVersionMade];
        if ReadBool( 'View', 'Needed', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaVersionNeeded];
        if ReadBool( 'View', 'Comment', False ) then
          AbZipOutline1.Attributes := AbZipOutline1.Attributes +
                                      [zaComment];

        AbZipOutline1.Hierarchy := ReadBool( 'View', 'Hierarchy', True );

//        Value := ReadInteger( 'View', 'OutlineStyle', -1 );
//        if Value <> -1 then
//          AbZipOutline1.OutlineStyle := TOutlineStyle( Value );
        {preferences menu}
        AbZipOutline1.BaseDirectory := ReadString( 'Preferences',
                                       'BaseDirectory',
                                       ExtractFilePath( Application.ExeName ) );
 if DirectoryExists(AbZipOutline1.BaseDirectory ) then
          AbZipOutline1.BaseDirectory := ExtractFilePath( Application.ExeName );
        Confirmations1.Checked := ReadBool( 'Preferences',
                                            'Confirmations', False );
//        SpeedButton7.Down := Confirmations1.Checked;
        Value := ReadInteger( 'Preferences',
                              'CompressionMethodToUse',
                              Ord( smBestMethod ) );
        AbZipOutline1.CompressionMethodToUse := TAbZipSupportedMethod( Value );
        Value := ReadInteger( 'Preferences', 'DeflationOption', Ord( doNormal));
        AbZipOutline1.DeflationOption := TAbZipDeflationOption( Value );
        AbZipOutline1.ExtractOptions := [];
        if ReadBool( 'Preferences', 'CreateDirs', False ) then
          AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions +
                                          [eoCreateDirs];
        if ReadBool( 'Preferences', 'RestorePath', False ) then
          AbZipOutline1.ExtractOptions := AbZipOutline1.ExtractOptions +
                                          [eoRestorePath];
        AbZipOutline1.StoreOptions := [];
        if ReadBool( 'Preferences', 'StripPath', False ) then
          AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions +
                                        [soStripPath];
        if ReadBool( 'Preferences', 'RemoveDots', False ) then
          AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions +
                                        [soRemoveDots];
        if ReadBool( 'Preferences', 'Recurse', False ) then
          AbZipOutline1.StoreOptions := AbZipOutline1.StoreOptions +
                                        [soRecurse];
        StubName := ReadString( 'Self Extracting', 'StubName', 'selfstub.exe' );
        {FilterComboBox1.Filter := ReadString( 'Navigator', 'Filter',
        'All files (*.*)|*.*|Zip Files (*.ZIP)|*.ZIP|' +
        'Executable Files (*.EXE)|*.EXE|Text files (*.TXT)|*.TXT|' +
        'Pascal files (*.PAS)|*.PAS' ); }
      end;
    finally
      Free;
    end;
  end;
end;

procedure TForm1.SaveIniSettings;
begin
  with TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) ) do begin
    try
      {view menu}
      WriteBool( 'General', 'Exists', True );
      with AbZipOutline1 do begin
        WriteBool( 'View', 'CSize', zaCompressedSize in Attributes );
        WriteBool( 'View', 'CMethod', zaCompressionMethod in Attributes );
        WriteBool( 'View', 'CRatio', zaCompressionRatio in Attributes );
        WriteBool( 'View', 'CRC', zaCRC in Attributes );
        WriteBool( 'View', 'EFA', zaExternalFileAttributes in Attributes );
        WriteBool( 'View', 'IFA', zaInternalFileAttributes in Attributes );
        WriteBool( 'View', 'Encryption', zaEncryption in Attributes );
        WriteBool( 'View', 'TimeStamp', zaTimeStamp in Attributes );
        WriteBool( 'View', 'USize', zaUnCompressedSize in Attributes );
        WriteBool( 'View', 'MadeBy', zaVersionMade in Attributes );
        WriteBool( 'View', 'Needed', zaVersionNeeded in Attributes );
        WriteBool( 'View', 'Comment', zaComment in Attributes );

        WriteBool( 'View', 'Hierarchy', Hierarchy );
//        WriteInteger( 'View', 'OutlineStyle', Ord( OutlineStyle ) );
        {preferences menu}
        WriteString( 'Preferences', 'BaseDirectory', BaseDirectory );
        WriteBool( 'Preferences', 'Confirmations', Confirmations1.Checked );
        WriteInteger( 'Preferences', 'CompressionMethodToUse',
                      Ord( CompressionMethodToUse ) );
        WriteInteger( 'Preferences', 'DeflationOption',
                      Ord( DeflationOption ));

        WriteBool( 'Preferences', 'CreateDirs',
                   eoCreateDirs in ExtractOptions );
        WriteBool( 'Preferences', 'RestorePath',
                   eoRestorePath in ExtractOptions );
        WriteBool( 'Preferences', 'StripPath', soStripPath in StoreOptions );
        WriteBool( 'Preferences', 'RemoveDots', soRemoveDots in StoreOptions );
        WriteBool( 'Preferences', 'Recurse', soRecurse in StoreOptions );
      end;
    finally
      Free;
    end;
  end;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  form_creaapri.FileNameEdit1.FileName:=arcname;
  form_creaapri.editserialepersonale.Text:=codiceserialepersonale;
  //if form_creaapri.ShowModal = mrOk then  begin
  form_creaapri.ShowModal;
       codiceserialepersonale:=form_creaapri.editserialepersonale.Text;
       AbZipOutline1.Password:=form_crypt.KeyStr+codiceserialepersonale;

       AbZipOutline1.FileName:=form_creaapri.FileNameEdit1.FileName;
       arcname:=form_creaapri.FileNameEdit1.FileName;
  //end; // else exit;

  Save1Click(Sender);
  AbZipOutline1.CloseArchive;
  AbZipOutline1.FileName := '';
  AbZipOutline1.Color := clBtnFace;
//  showmessage(arcname);
   // showmessage(form_crypt.KeyStr);

  form_crypt.boxInputFile.FileName:=arcname;
  form_crypt.boxOutputFile.FileName:=arcname+'x';
  form_crypt.btnEncryptClick(sender);
  if fileexists(form_crypt.boxOutputFile.FileName) then begin
    deletefile(form_crypt.boxInputFile.FileName);
    renamefile(form_crypt.boxOutputFile.FileName, form_crypt.boxInputFile.FileName);
  end;
//  AbZipOutline1.CloseArchive;



  WriterForm.cReaderFile:=form_crypt.boxInputFile.FileName;
//  showmessage(WriterForm.cReaderFile);

//  form_crypt.strsorg:=form_crypt.KeyStr;
//  form_crypt.btnEncrypt1click(sender); // cripto la chiave

  //WriterForm.btnStoreClick(sender);
  WriterForm.btnStore1Click(sender);

 (*
  DeleteAllSelected.Enabled:=false;
  MenuFileDeselectAll.Enabled:=false;
  speedbutton8.Enabled:=false;
  speedbutton9.Enabled:=false;
  speedbutton10.Enabled:=false;
  speedbutton11.Enabled:=false;
  speedbutton12.Enabled:=false;
*)
    btnsalva.Enabled:=false;
    btnsig.Enabled:=false;
    btnagg.Enabled:=false;
    btndel.Enabled:=false;
    btnestrai.Enabled:=false;

  PanelMain.Hide;
  form_open.Hide;
  panel5.Show;
  arcname:='';
  codiceserialepersonale:='000000';

  imagelist1.GetBitmap(8,img_sd.Picture.Bitmap);

end;

procedure TForm1.AbZipOutline1Load(Sender: TObject);
begin
  IgnoreDuplicateWarning := False;
  AbZipOutline1.Color := clWindow;
  SetCaption;
end;

procedure TForm1.Convert1Click(Sender: TObject);
var
  ZipName : string;
  ExeName : string;
  StubSpec : string;
  StubStream, ZipStream, SelfExtractingStream : TStream;
begin
  AbZipOutline1.Save;
ExpandFileName(AbZipOutline1.FileName );
  AbZipOutline1.FileName := '';

  ExeName := ChangeFileExt( arcname, '.exe' );
  StubSpec := ExtractFilePath( Application.ExeName ) + StubName;

  StubStream := TFileStream.Create( StubSpec, fmOpenRead or fmShareDenyWrite );
  ZipStream := TFileStream.Create( arcname , fmOpenRead or fmShareDenyWrite );
  SelfExtractingStream := TFileStream.Create( ExeName,
                                              fmCreate or fmShareExclusive );
  try
    MakeSelfExtracting( StubStream, ZipStream, SelfExtractingStream );
  finally
    SelfExtractingStream.Free;
    StubStream.Free;
    ZipStream.Free;
  end;
  {and reload...}
  AbZipOutline1.FileName := ExeName;
end;
       {
procedure TForm1.GetMinMaxInfo( var Msg: TWMGetMinMaxInfo );
begin
  with Msg.MinMaxInfo^ do begin
    ptMinTrackSize := Point( 700, 400 );
    ptMaxTrackSize := Point( 1600, 1200 );
  end;
end; }

procedure TForm1.AbZipOutline1ConfirmOverwrite(var Name: string;
  var Confirm: Boolean);
var
  pMessage : array [0..255] of Char;
  pCaption : array [0..80] of Char;
begin
  Confirm :=  MessageBox( 0,
                          StrPCopy( pMessage,
                                    Format( 'Overwrite %s?',
                                    [Name] ) ),
                          StrPCopy( pCaption, 'Confirmation' ),
                          MB_ICONQUESTION or MB_OKCANCEL ) = IDOK;
end;

procedure TForm1.Default1Click(Sender: TObject);
var
  i : Integer;
begin
  AbZipOutline1.Attributes := AbDefZipAttributes;
  for i := 0 to Ord( High( TAbZipAttribute ) ) do
    Attributes1.Items[i].Checked := TAbZipAttribute(i) in AbDefZipAttributes;
  AbZipOutline1.Update;
end;

procedure TForm1.Contents1Click(Sender: TObject);
begin
 // Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  dlgAboutBox := TDlgAboutBox.Create( Self );
  try
    dlgAboutBox.ShowModal;
  finally
    dlgAboutBox.Free;
  end;
end;

procedure TForm1.FileListBox1DblClick(Sender: TObject);
var
  Browser : TAbZipBrowser;
  Filename : string;
  OK : Boolean;
begin
  {Filename := IncludeTrailingPathDelimiter(DirectoryListBox1.Directory) +
    FileListBox1.Items[FileListBox1.ItemIndex]; }
  if AbZipOutline1.FileName = '' then
    try
      AbZipOutline1.FileName := Filename;
    except
      AbZipOutline1.FileName := '';
    end
  else begin
    Browser := TAbZipBrowser.Create( Self );
    OK := True;
    try
      try
        Browser.FileName := Filename;
      except
        OK := False;
      end;
    finally
      Browser.Free;
    end;
    if OK then
      AbZipOutline1.FileName := Filename;
  end;
end;

procedure TForm1.AbZipOutline1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  FileListBox1.Update;
end;

procedure TForm1.FileListBox1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then begin
    FileX := X;
    FileY := Y;
  end;
end;

procedure TForm1.FileListBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if ssLeft in Shift then
    if ( ( X - FileX ) * ( X - FileX ) +
         ( Y - FileY ) * ( Y - FileY ) > 100 ) then
      if FileListBox1.SelCount > 0 then
        if ( not FileListBox1.Dragging ) then
          FileListBox1.BeginDrag( True );
end;

procedure TForm1.AbZipOutline1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    if ( ( X - OutlineX ) * ( X - OutlineX ) +
         ( Y - OutlineY ) * ( Y - OutlineY ) > 100 ) then
      if AbZipOutline1.SelectedZipItem <> nil then
        if ( not FileListBox1.Dragging ) then
          AbZipOutline1.BeginDrag( True );
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  FileListBox1.Directory:=directoryEdit1.Text;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Edit1Exit( Self );
end;

procedure TForm1.OS5Click(Sender: TObject);
var
  Item : TMenuItem;
begin
  OS1.Checked := False;
  OS2.Checked := False;
  OS3.Checked := False;
  OS4.Checked := False;
  OS5.Checked := False;
  OS6.Checked := False;

  Item := (Sender as TMenuItem);
  Item.Checked := True;
//  AbZipOutline1.OutlineStyle := TOutlineStyle( Item.Tag );
end;

procedure TForm1.AbZipOutline1ConfirmProcessItem(Sender: TObject;
  Item: TAbArchiveItem; ProcessType: TAbProcessType;
  var Confirm: Boolean);
var
  Process : string;
begin

  Confirm := True;
  case ProcessType of
    ptAdd : Process := 'Add';
    ptDelete : Process := 'Delete';
    ptExtract : Process := 'Extract';
    ptFreshen : Process := 'Freshen';
    ptMove : Process := 'Move';
  end;
  DoConfirm( Sender, Item, Confirm, Process );

end;

procedure TForm1.AbZipOutline1ProcessItemFailure(Sender: TObject;
  Item: TAbArchiveItem; const ProcessType: TAbProcessType;
  ErrorClass: TAbErrorClass; ErrorCode: Integer);
var
  S : string;
  pMessage : array [0..128] of Char;
begin
  if ( ErrorClass = ecAbbrevia ) and
     ( ErrorCode = AbDuplicateName ) then begin
    if not IgnoreDuplicateWarning then begin
      if ProcessType = ptAdd then
        s := 'Cannot add '
      else
        s := 'Cannot move ';
      s := s + Item.FileName +
           '. Would create a duplicate name. Ignore future warnings?';
      if (Application.MessageBox( StrPCopy( pMessage, s ), 'Warning',
         MB_YESNO ) = IDYES ) then
        IgnoreDuplicateWarning := True;
    end;
    Exit;
  end;

  case ProcessType of
    ptAdd :
      ShowMessage( 'Cannot add ' + Item.FileName + ' to ' +
                   TAbZipOutline(Sender).FileName );
    ptExtract :
      ShowMessage( 'Cannot extract ' + Item.FileName + ' from ' +
                   TAbZipOutline(Sender).FileName );
    ptFreshen :
      ShowMessage( 'Cannot freshen ' + Item.FileName + ' in ' +
                   TAbZipOutline(Sender).FileName );
    ptMove :
      ShowMessage( 'Cannot move ' + Item.FileName + ' to ' +
                   TAbZipOutline(Sender).FileName );
  end;
  if ErrorClass = ecAbbrevia then
    ShowMessage( AbStrRes(ErrorCode) );
end;


procedure TForm1.TempDirectory1Click(Sender: TObject);
begin      {
  with TAbDirDlg.Create(Self) do begin
    Caption := 'Directory';
    AdditionalText := 'Select temporary directory';
    if Execute then
      AbZipOutline1.TempDirectory := SelectedFolder;
    Free;
  end; }
end;

procedure TForm1.Logging1Click(Sender: TObject);
var
  E, F : string;
begin
  AbZipOutline1.Logging := False;
  Logging1.Checked := not Logging1.Checked;
  if Logging1.Checked then with OpenDialog1 do begin
    Title := 'Select Text File for Logging';
    E := DefaultExt;
    DefaultExt := '';
    F := Filter;
    Filter := '';
    Filename := AbZipOutline1.LogFile;
    if Execute then begin
      AbZipOutline1.LogFile := Filename;
      AbZipOutline1.Logging := True;
    end;
    DefaultExt := E;
    Filter := F;
  end;
  Logging1.Checked := AbZipOutline1.Logging;
end;

end.
