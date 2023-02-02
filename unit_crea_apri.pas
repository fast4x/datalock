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

unit unit_crea_apri;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, EditBtn;

type

  { TForm_creaapri }

  TForm_creaapri = class(TForm)
    Button1: TButton;
    Button2: TButton;
    editserialepersonale: TLabeledEdit;
    FileNameEdit1: TFileNameEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form_creaapri: TForm_creaapri;

implementation
uses umain;
{$R *.frm}

{ TForm_creaapri }

procedure TForm_creaapri.FormShow(Sender: TObject);
begin
  editserialepersonale.Text:=form1.codiceserialepersonale;
end;

end.

