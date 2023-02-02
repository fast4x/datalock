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

unit unit2;

{$mode objfpc}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, EditBtn,
  FileCtrl, StdCtrls,dos;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    FileListBox1: TFileListBox;
    seldir: TSelectDirectoryDialog;
    procedure Button1Click(Sender: TObject);
    procedure DirectoryEdit1Change(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure seldirFolderChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
 uses umain;
{$R *.frm}

{ TForm2 }

procedure TForm2.FileListBox1DblClick(Sender: TObject);
begin
     form1.AbZipOutline1.FileName:=filelistbox1.FileName;
     FileSetAttr(filelistbox1.FileName, hidden);
     hide;
     form1.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  seldir.FileName:=extractfilepath(paramstr(0));
end;

procedure TForm2.seldirFolderChange(Sender: TObject);
begin
    filelistbox1.Directory:=seldir.FileName;
end;

procedure TForm2.DirectoryEdit1Change(Sender: TObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 if seldir.Execute then  seldirFolderChange(Sender);
end;

end.

