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


unit dgAbout;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type

  { TdlgAboutBox }

  TdlgAboutBox = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lpin: TLabel;
    lreg: TLabel;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgAboutBox: TdlgAboutBox;

implementation

{$R *.frm}

uses
  AbConst, FmReader;

procedure TdlgAboutBox.FormCreate(Sender: TObject);
begin
  lpin.Caption:=ReaderForm.pin;
  lreg.Caption:=ReaderForm.codregistrazione;
//    lreg.Caption:=ReaderForm.codseriale;
end;

procedure TdlgAboutBox.Button1Click(Sender: TObject);
begin
  close;
end;





end.

