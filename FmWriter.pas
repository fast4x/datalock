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


unit FmWriter;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, md5;

type

  { TWriterForm }

  TWriterForm = class(TForm)
    btnStore1: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblHelp: TLabel;
    memData: TMemo;
    btnStore: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    memData1: TMemo;
    procedure btnCloseClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnStore1Click(Sender: TObject);
    procedure btnStoreClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var cReaderFile:string;
  end;

var
  WriterForm: TWriterForm;

implementation

uses
  UPayload,umain,unit_crypt;

//const
//  cReaderFile = 'Reader.exe';

{$R *.frm}

procedure TWriterForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TWriterForm.btnDeleteClick(Sender: TObject);
var
  PL: TPayload;
begin
  PL := TPayload.Create(cReaderFile);
  try
    PL.RemovePayload;
  finally
    PL.Free;
  end;
end;

procedure TWriterForm.btnStore1Click(Sender: TObject);
var
  PL: TPayload;
  sigillo:string;
begin

  form_crypt.strsorg.Text:=form1.codiceserialepersonale;
  Form_crypt.btnEncrypt1Click(Sender);

  sigillo:=memData.Text+'-'+form_crypt.strdest.Text;

  PL := TPayload.Create(cReaderFile);
  try
    PL.SetPayload(PChar(sigillo)^, Length(sigillo));
  finally
    PL.Free;
  end;

end;

procedure TWriterForm.btnStoreClick(Sender: TObject);
var
  PL: TPayload;
begin
  PL := TPayload.Create(cReaderFile);
  try
    PL.SetPayload(PChar(memData.Text)^, Length(memData.Text));
  finally
    PL.Free;
  end;
end;

procedure TWriterForm.Button1Click(Sender: TObject);
var uid:tguid;
begin
  createguid(uid);
  edit1.Caption:=guidtostring(uid);
  edit1.Text:=stringreplace(edit1.Text,'-','',[rfReplaceAll,rfIgnoreCase]);
  edit1.Text:=stringreplace(edit1.Text,'{','',[rfReplaceAll,rfIgnoreCase]);
  edit1.Text:=stringreplace(edit1.Text,'}','',[rfReplaceAll,rfIgnoreCase]);
  edit3.Caption:=edit1.Caption+edit2.Caption;
  edit4.Text:=MD5Print(MD5String(edit3.text));
end;

procedure TWriterForm.Button2Click(Sender: TObject);
var
  MyTime: TDateTime;
begin
  MyTime:= Now;
  //Writeln('Now it is: ' + DateTimeToStr(MyTime));
  //Writeln('Today is: ' + FormatDateTime('yyy-mm-dd hh:nn', MyTime));
  edit2.Caption:=FormatDateTime('mmddhhnnss', MyTime);

  edit3.Caption:=edit1.Caption+edit2.Caption;

  edit4.Text:=MD5Print(MD5String(edit3.text));
end;

procedure TWriterForm.Button3Click(Sender: TObject);
begin
    if MD5Print(MD5String(memdata.Lines[0])) = memdata.Lines[1] then showmessage('match') else showmessage('not match');
end;

procedure TWriterForm.FormCreate(Sender: TObject);
begin
  if not FileExists(cReaderFile) then
  begin
    lblHelp.Caption :=
      'ERROR:'#13#10'You must compile Reader.exe before using this program.';
    lblHelp.Font.Color := clRed;
    lblHelp.Font.Style := [fsBold];
    btnDelete.Enabled := False;
    btnStore.Enabled := False;
  end;
end;

end.
