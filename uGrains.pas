unit uGrains;

interface

Type
  Grains = class
    class function Square(ASquare : integer) : UInt64;
    class function Total : UInt64;
    class function Value64 : UInt64;
  end;


implementation

  uses
    System.Math, SYstem.SysUtils;

    class function Grains.Value64 : UInt64;
      begin
        Result := 2;
        for var i := 3 to 64 do
          Result := Result * 2
      end;

    class function Grains.Square(ASquare : integer) : UInt64;
      begin
        if (ASquare < 1) or (ASquare > 64) then
          raise ERangeError.Create('Value out of range. Must be between 1 and 64 included.');

        if ASquare = 64 then
          Result := Value64
        else
          Result := round(power(2,ASquare - 1) / 1);
      end;

    class function Grains.Total : UInt64;
      begin
        Result := Value64 * 2 - 1;
      end;

end.
