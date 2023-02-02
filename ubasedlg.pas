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

unit ubasedlg;

{$mode objfpc}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, EditBtn, ExtCtrls;

type

  { TBaseDirDlg }

  TBaseDirDlg = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DirectoryEdit1: TDirectoryEdit;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    Button3: TButton;
    Label1: TLabel;
    Panel5: TPanel;
    procedure Button3Click(Sender: TObject);
    procedure DirectoryEdit1AcceptDirectory(Sender: TObject; Var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseDirDlg: TBaseDirDlg;

implementation

{$R *.frm}

uses
  AbUtils,
  uDemoDlg;

procedure TBaseDirDlg.Button3Click(Sender: TObject);
begin
  DemoDlg := TDemoDlg.Create( Self );
  try
    DemoDlg.Caption := 'Create Subdirectory';
    DemoDlg.Edit1.Text := '';
    DemoDlg.ShowModal;      {
    if ( DemoDlg.ModalResult = mrOK ) and ( DemoDlg.Edit1.Text <> '' ) then
      AbCreateDirectory( DLB.Directory + '\' + DemoDlg.Edit1.Text );
    DLB.Update; }
  finally
    DemoDlg.Free;
  end;
end;

procedure TBaseDirDlg.DirectoryEdit1AcceptDirectory(Sender: TObject;
  Var Value: String);
begin
  //showmessage(value);
end;

end.
