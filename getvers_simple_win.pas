unit getvers_simple_win;

{$mode objfpc}  {$H+}

interface

uses
  Classes, SysUtils, FileInfo;

type
   GetFile = String;

  Function GetVersionSimpleWin (Var GetFile : String): String;


implementation

Function GetVersionSimpleWin (Var GetFile : String): String;
var  xinfo: tfileversioninfo;
     r:word;
     txt:string;
begin
  if GetFile='' then GetFile:=Paramstr(0);
  xinfo := TFileVersionInfo.Create(nil);
  xinfo.fileName:=GetFile;
  xinfo.ReadFileInfo;
//  result:= xinfo.VersionStrings[4]; // fileversion
 // txt:=xinfo.VersionStrings[4];
  //  result:= rightstr(txt,length(txt)-12);


  for r:=0 to xinfo.VersionStrings.Count-1 do begin
      //  if ansipos('fileversion',lowercase(xinfo.VersionStrings[r])) > -1 then begin
            if copy(lowercase(xinfo.VersionStrings[r]),0,11)='fileversion' then begin
             txt:=xinfo.VersionStrings[r];
            result:=rightstr(txt,length(txt)-12);
            // break;
            //  result:='trovato in item '+inttostr(r);
          end;
    end;

  //result:='';
end;

end.

