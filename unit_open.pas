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

unit unit_open;

{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, FileCtrl,
  EditBtn;

type

  { Tform_open }

  Tform_open = class(TForm)
    DirectoryEdit1: TDirectoryEdit;
    FileListBox1: TFileListBox;
    procedure DirectoryEdit1Change(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  form_open: Tform_open;

implementation
uses umain,unit_crypt,fmreader,fmwriter;

{$R *.frm}

{ Tform_open }

procedure Tform_open.FormCreate(Sender: TObject);
begin
  directoryedit1.Directory:=extractfilepath(paramstr(0));;
end;

procedure Tform_open.FileListBox1DblClick(Sender: TObject);
begin
  form1.AbZipOutline1.CloseArchive;

  form1.arcname:=filelistbox1.FileName;

  ReaderForm.cReaderFile:=filelistbox1.FileName;
  ReaderForm.Button1Click(sender);
//  showmessage(ReaderForm.memData.Text);
  if  ReaderForm.memData.Lines.Count>0 then  begin
  if  ReaderForm.memData.Lines[0] = 'DataLck' then begin
     showmessage('Cartella con sigillo DataLock');
//     showmessage('Rimuovo il sigillo DataLock prima di decifrarlo');
     WriterForm.cReaderFile:=filelistbox1.FileName;
     WriterForm.btnDeleteClick(sender);

  form_crypt.boxInputFile.FileName:=form1.arcname;
  form_crypt.boxOutputFile.FileName:=form1.arcname+'x';
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

  form1.AbZipOutline1.BaseDirectory:=filelistbox1.Directory;
  form1.AbZipOutline1.FileName:=filelistbox1.FileName;
//  form1.AbZipOutline1.Password:='123456';
//  showmessage('Password della cartella: '+form1.AbZipOutline1.Password);;

//  showmessage(filelistbox1.FileName);
  form1.LayoutOpen(sender);
end;

procedure Tform_open.FormClick(Sender: TObject);
begin

end;

procedure Tform_open.DirectoryEdit1Change(Sender: TObject);
begin
  filelistbox1.Directory:=directoryedit1.Directory;
  filelistbox1.UpdateFileList;
end;

end.

