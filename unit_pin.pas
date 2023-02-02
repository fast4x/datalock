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


unit unit_pin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  MaskEdit;

type

  { TFormPin }

  TFormPin = class(TForm)
    Button1: TButton;
    pwd: TEdit;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
    procedure pwdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public

  end;

var
  FormPin: TFormPin;

implementation

{$R *.frm}

{ TFormPin }

procedure TFormPin.FormShow(Sender: TObject);
begin
  pwd.SetFocus;
end;

procedure TFormPin.pwdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  if Key = 13 then modalresult:=mrOk; // chiude il form e valida il pin
end;

end.

