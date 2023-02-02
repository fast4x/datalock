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


unit FmReader;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type

  { TReaderForm }

  TReaderForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    editcodapp: TLabeledEdit;
    editcodregistraz: TLabeledEdit;
    editpin: TLabeledEdit;
    editcodserial: TLabeledEdit;
    memData: TMemo;
    btnClose: TButton;
    lblHelp: TLabel;
    lblSize: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     var cReaderFile, pin, codseriale, codregistrazione :string;
         PayloadPresent :boolean;
  end;

var
  ReaderForm: TReaderForm;

implementation

uses
  UPayload,md5,unit_crypt,umain, unit_pin;

{$R *.frm}

procedure TReaderForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TReaderForm.Button1Click(Sender: TObject);
var
  PL: TPayload;
  DataStr: string;
begin

  PL := TPayload.Create(cReaderFile);
  try
    if PL.HasPayload then
    begin
      lblSize.Caption := Format('Payload data size = %d', [PL.PayloadSize]);
      SetLength(DataStr, PL.PayloadSize);
      PL.GetPayload(PChar(DataStr)^);

//      form_crypt.strsorg.Text:=DataStr;
//      form_crypt.btnDecrypt1click(sender);

//      memData.Text := form_crypt.strdest.Text;
//      memData.Text := copy(DataStr,0,6);    // lunghezza nome sigillo per Eureka
//        memData.Text := copy(DataStr,0,11);    // lunghezza nome sigillo per SecureDrive
        memData.Text := copy(DataStr,0,7);    // lunghezza nome sigillo per DataLck

      form_crypt.strsorg.Text:=copy(DataStr,pos('-',DataStr)+1,length(DataStr));
      form_crypt.btnDecrypt1click(sender);
      editcodserial.Text:=form_crypt.strdest.Text;

      //if MD5Print(MD5String(memdata.Lines[0])) = memdata.Lines[1] then showmessage('match') else showmessage('not match');
    end
    else
    begin
      lblSize.Caption := 'No payload present';
      lblSize.Font.Style := [fsBold];
    end;
  finally
    PL.Free;
  end;

end;

procedure TReaderForm.Button2Click(Sender: TObject);
var
  PL: TPayload;
  DataStr: string;
  pos1,pos2,pos3:integer;
begin

  PayloadPresent:=false;

  PL := TPayload.Create(cReaderFile);
  try
    if PL.HasPayload then
    begin
      lblSize.Caption := Format('Payload data size = %d', [PL.PayloadSize]);
      SetLength(DataStr, PL.PayloadSize);
      PL.GetPayload(PChar(DataStr)^);
      //showmessage('chiave eureka pre decrypt '+DataStr);

      form_crypt.strsorg.Text:=copy(DataStr,0,pos('-',DataStr)-1);
      form_crypt.btnDecrypt1click(sender);
      editpin.Text := form_crypt.strdest.Text;
  //    showmessage('pin '+form_crypt.strdest.Text);

      if formPin.showmodal= mrOk then begin
        pin:=formPin.pwd.Text;
      end;

     // InputQuery('PIN Secure Drive', '', TRUE, pin);


        if pin <> editpin.Text then begin
          showmessage('Pin not recognized!');

          application.Terminate;

        end;

        PayloadPresent:=true; // payload presente e codice pin corretto



      //form_crypt.ShowModal;


//      form_crypt.strsorg.Text:=copy(DataStr,pos('-',DataStr)+1,length(DataStr));
        pos1:=pos('-',DataStr);
        pos2:=pos('{',DataStr);
        pos2:=pos2-pos1;


        //showmessage('- '+inttostr(pos1)+' { '+inttostr(pos2)+' } '+inttostr(pos3));
        form_crypt.strsorg.Text:=copy(DataStr,pos1+1,pos2-1);
        form_crypt.btnDecrypt1click(sender);

      //showmessage('chiave eureka pre decrypt '+form_crypt.strsorg.Text);
      //showmessage('chiave eureka post decrypt '+form_crypt.strdest.Text);
      //memData.Text := form_crypt.strdest.Text; // imposta chiave a quella decodificata
      memData.Text := form_crypt.strsorg.Text;  // imposta chiave a quella criptata

      editcodserial.Text := form_crypt.strdest.Text;

      codseriale:=form_crypt.strdest.Text;;

//      form_crypt.strsorg.Text:=copy(DataStr,pos('{',DataStr)+1,length(DataStr));
//      form_crypt.btnDecrypt1click(sender);
//      editcodregistraz.Text := form_crypt.strdest.Text;

        pos3:=pos('}',DataStr);
        pos2:=pos('{',DataStr);
        pos3:=pos3-pos2;

      editcodregistraz.Text:=copy(DataStr,pos('{',DataStr)+1,pos3-1);
      //showmessage('cod registrazione '+editcodregistraz.Text);

        codregistrazione:=editcodregistraz.Text;


        form_crypt.strsorg.Text:=copy(DataStr,pos('}',DataStr)+1,length(DataStr));
        form_crypt.btnDecrypt1click(sender);
        editcodapp.Text := form_crypt.strdest.Text;
        //showmessage('cod applicazione '+editcodapp.Text);

      showmessage('cod app '+editcodapp.text+' cod licenza '+editcodserial.Text);

      if MD5Print(MD5String(trim(editcodapp.text))) <> editcodserial.Text then begin
         showmessage('Questa copia è stata manomessa! Impossibile usarla.');
         application.terminate;
      end;

//      show;

      form1.OgDaysCode1.AutoDecrease:=true;
      form1.OgDaysCode1.AutoCheck:=true;
      form1.OgDaysCode1.CheckCode(true);



//exit;
//      memData.Text := DataStr;
      //if MD5Print(MD5String(memdata.Lines[0])) = memdata.Lines[1] then showmessage('match') else showmessage('not match');
    end
    else
    begin
      lblSize.Caption := 'No payload present';
      lblSize.Font.Style := [fsBold];
      PayloadPresent:=false;
      showmessage('Datalock is in unsafe mode. Upgrade to Premium.');
      Form1.Statuslbl.Caption:='Datalock is in unsafe mode. Upgrade to Premium.';
//      application.Terminate;
    end;
  finally
    PL.Free;
  end;

end;

procedure TReaderForm.FormCreate(Sender: TObject);
begin
  PayloadPresent:=false;
  cReaderFile:=application.ExeName;
//  Button1Click(sender);
//  Form_crypt.KeyStr:='pRYXo6s5';
Form_crypt.KeyStr:='pRYXo6s5';
  Button2Click(sender);

  //Form_crypt.KeyStr:=memData.Text;
  //showmessage('chiave DataLock: '+memData.Text);
(*
  if memData.Text='' then begin
    showmessage('Questa copia non è originale, impossibile da usare!');
    application.Terminate;
  end;
  *)
end;

end.
