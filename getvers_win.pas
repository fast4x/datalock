unit getvers_win;

{$mode objfpc}

interface

uses
  Classes, SysUtils, resource, versiontypes, versionresource;

type
  { TVersionInfo }

  TVersionInfo = class
  private
    FVersResource: TVersionResource;
    function GetFixedInfo: TVersionFixedInfo;
    function GetStringFileInfo: TVersionStringFileInfo;
    function GetVarFileInfo: TVersionVarFileInfo;

    function SearchValue(const aString : string) : string;
  public
    constructor Create;
    destructor Destroy; override;

    function CompanyName : string;
    function InternalName : string;
    function FileVersion : string;

    procedure Load(Instance: THandle);
    property FixedInfo: TVersionFixedInfo read GetFixedInfo;
    property StringFileInfo: TVersionStringFileInfo read GetStringFileInfo;
    property VarFileInfo: TVersionVarFileInfo read GetVarFileInfo;
  end;

implementation

{ TVersionInfo }

function TVersionInfo.GetFixedInfo: TVersionFixedInfo;
begin
  Result := FVersResource.FixedInfo;
end;

function TVersionInfo.GetStringFileInfo: TVersionStringFileInfo;
begin
  Result := FVersResource.StringFileInfo;
end;

function TVersionInfo.GetVarFileInfo: TVersionVarFileInfo;
begin
  Result := FVersResource.VarFileInfo;
end;

function TVersionInfo.SearchValue(const aString: string): string;
var s : TVersionStringTable;
    i,j : integer;
begin
  result := '';
  for i:=0 to StringFileInfo.Count-1 do begin
      s := StringFileInfo.Items[i];
      for j:=0 to s.Count-1 do
          if s.Keys[j] = aString then begin
             result := s.Values[j];
             break;
          end;
  end;
end;

function TVersionInfo.CompanyName: string;
begin
   Result := SearchValue('CompanyName');
end;

function TVersionInfo.InternalName: string;
begin
   Result := SearchValue('InternalName');
end;

function TVersionInfo.FileVersion: string;
begin
   Result := SearchValue('FileVersion');
end;

constructor TVersionInfo.Create;
begin
  inherited Create;
  FVersResource := TVersionResource.Create;
  Load(HInstance);
end;

destructor TVersionInfo.Destroy;
begin
  FVersResource.Free;
  inherited Destroy;
end;

procedure TVersionInfo.Load(Instance: THandle);
var
  Stream: TResourceStream;
begin
  Stream := TResourceStream.CreateFromID(Instance, 1, PChar(RT_VERSION));
  try
    FVersResource.SetCustomRawDataStream(Stream);

    // access some property to load from the stream
    FVersResource.FixedInfo;
    // clear the stream
    FVersResource.SetCustomRawDataStream(nil);
  finally
    Stream.Free;
  end;
end;

end.
