unit getvers;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils {$ifdef linux}, getvers_lin {$endif} {$ifdef windows}, getvers_win, getvers_simple_win{$endif} ;

Type

  FilePath = String;

  Function GetVersion (Var FilePath : String): String;


implementation

Function GetVersion (Var FilePath : String): String;
var xvers : string;

begin
  {$ifdef windows}
   result:=GetVersionSimpleWin(FilePath);
  {$else}
    GetProgramVersion(xvers,FilePath);
    result:=xvers;
  {$endif}

end;


end.

