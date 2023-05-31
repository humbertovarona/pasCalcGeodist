function CalculateDistance(lat1, lon1, lat2, lon2: Double): Double;

var
  lat1_rad, lon1_rad, lat2_rad, lon2_rad, dlat, dlon, a : Double;
begin
  lat1_rad := lat1 * Pi / 180;
  lon1_rad := lon1 * Pi / 180;
  lat2_rad := lat2 * Pi / 180;
  lon2_rad := lon2 * Pi / 180;
  dlat := lat2 - lat1;
  dlon := lon2 - lon1;
  a := Sin(dlat / 2) * Sin(dlat / 2) +
        Cos(lat1_rad) * Cos(lat2_rad) * Sin(dlon / 2) * Sin(dlon / 2);
  Result := 2 * ArcTan2(Sqrt(a), Sqrt(1 - a));
end;
