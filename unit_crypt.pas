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


unit unit_crypt;

{$MODE Delphi}

interface

uses
  Classes, SysUtils, FileUtil, DCPdes, Forms, Controls, Graphics, Dialogs,
  EditBtn, StdCtrls, ComCtrls, ExtCtrls,dcpsha1, dcpsha256, DCPcrypt2,dcpsha512;

type

  { TForm_crypt }

  TForm_crypt = class(TForm)
    btnDecrypt1: TButton;
    btnEncrypt: TButton;
    btnDecrypt: TButton;
    btnEncrypt1: TButton;
    Cipher: TDCP_3des;
    boxInputFile: TFileNameEdit;
    boxOutputFile: TFileNameEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    strsorg: TLabeledEdit;
    strdest: TLabeledEdit;

    ProgressBar1: TProgressBar;
    procedure btnDecrypt1Click(Sender: TObject);
    procedure btnDecryptClick(Sender: TObject);
    procedure btnEncrypt1Click(Sender: TObject);
    procedure btnEncryptClick(Sender: TObject);
    procedure CipherProgress(Sender: TObject; iCurrent, iMax: int64);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    KeyStr: string;
  end;

var
  Form_crypt: TForm_crypt;

implementation

{$R *.frm}

{ TForm_crypt }

procedure TForm_crypt.btnEncryptClick(Sender: TObject);
var
//    Cipher: TDCP_rc4;

    Source, Dest: TFileStream;
  begin
    //KeyStr:= '';
    //if InputQuery('Passphrase','Enter passphrase',KeyStr) then  // get the passphrase
    //begin

      try
        Source:= TFileStream.Create(boxInputFile.Text, 0);
        Dest:= TFileStream.Create(boxOutputFile.Text,fmCreate);
        //Cipher:= TDCP_rc4.Create(Self);
//        Cipher.InitStr(KeyStr,TDCP_sha256);              // initialize the cipher with a hash of the passphrase
        Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
        Cipher.EncryptStream(Source,Dest,Source.Size); // encrypt the contents of the file
        Cipher.Burn;
//        Cipher.Free;
        Dest.Free;
        Source.Free;
//        MessageDlg('Chiave registrata',mtInformation,[mbOK],0);
      except
        MessageDlg('File IO error',mtError,[mbOK],0);
      end;
    //end;
  end;

procedure TForm_crypt.CipherProgress(Sender: TObject; iCurrent, iMax: int64);
begin
  progressbar1.Min:=0;
  progressbar1.Position:=icurrent;
  progressbar1.Max:=imax;
  label3.Caption:=inttostr(icurrent)+'/'+inttostr(imax);
  application.ProcessMessages;

end;

procedure TForm_crypt.FormCreate(Sender: TObject);
begin

end;

procedure TForm_crypt.btnDecryptClick(Sender: TObject);
var
//    Cipher: TDCP_rc4;
//    KeyStr: string;
    Source, Dest: TFileStream;
  begin
  //  KeyStr:= '';
    //if InputQuery('Passphrase','Enter passphrase',KeyStr) then  // get the passphrase
    //begin
      try
        Source:= TFileStream.Create(boxInputFile.filename,fmOpenRead);
        Dest:= TFileStream.Create(boxOutputFile.filename,fmCreate);
//        Cipher:= TDCP_rc4.Create(Self);
//        Cipher.InitStr(KeyStr,TDCP_sha256);              // initialize the cipher with a hash of the passphrase
        Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
        Cipher.DecryptStream(Source,Dest,Source.Size); // decrypt the contents of the file
        Cipher.Burn;
//        Cipher.Free;
        Dest.Free;
        Source.Free;
//        MessageDlg('Chiave tradotta',mtInformation,[mbOK],0);
      except
        MessageDlg('File IO error',mtError,[mbOK],0);
      end;
    //end;
  end;

procedure TForm_crypt.btnDecrypt1Click(Sender: TObject);
begin
    try
        //Cipher:= TDCP_rc4.Create(Self);
//        Cipher.InitStr(KeyStr,TDCP_sha256);              // initialize the cipher with a hash of the passphrase
        Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
        strdest.text:=Cipher.DecryptString(strsorg.Text);
        Cipher.Burn;
//        Cipher.Free;
//        MessageDlg('Chiave decifrata',mtInformation,[mbOK],0);
      except
        MessageDlg('error',mtError,[mbOK],0);
      end;
end;

procedure TForm_crypt.btnEncrypt1Click(Sender: TObject);
begin
  try
        //Cipher:= TDCP_rc4.Create(Self);
//        Cipher.InitStr(KeyStr,TDCP_sha256);              // initialize the cipher with a hash of the passphrase
        Cipher.InitStr(KeyStr,TDCP_sha512);              // initialize the cipher with a hash of the passphrase
        strdest.text:=Cipher.EncryptString(strsorg.Text);
        Cipher.Burn;
//        Cipher.Free;
//        MessageDlg('Chiave cifrata',mtInformation,[mbOK],0);
      except
        MessageDlg('error',mtError,[mbOK],0);
      end;
end;

end.

