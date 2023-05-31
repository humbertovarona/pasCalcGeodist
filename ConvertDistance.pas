function ConvertDistance(distance: Double; unitStr: String): Double;

begin
  if unitStr = 'km' then
    Result := distance * 111.12
  else if unitStr = 'miles' then
    Result := distance * 69.046766881413
  else if unitStr = 'nm' then
    Result := distance * 60
  else
    raise Exception.Create('Invalid unit. Supported units are ''km'', ''miles'', and ''nautical miles''.');
end;
