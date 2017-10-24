program merge (input, output);
{ liest ohne Eingabeueberpruefung zwei sortierte Felder mit 
  integer-Zahlen ein; beide Felder werden in einem weiteren Feld
  sortiert zusammengefuegt; das Ergebnis wird ausgegeben; ist 
  die Eingabe unsortiert, so ist das Ergebnisfeld undefiniert }
  const
  FELDLAENGE1 = 5;
  FELDLAENGE2 = 8;
  ERGEBNISFELDLAENGE = 13; { FELDLAENGE1 + FELDLAENGE2 }
        
  type
  tFeld1 = array [1..FELDLAENGE1] of integer;
  tFeld2 = array [1..FELDLAENGE2] of integer;
  tErgebnisFeld = array [1..ERGEBNISFELDLAENGE] of integer;

  var
  Feld1 : tFeld1;
  Feld2 : tFeld2;
  ErgebnisFeld : tErgebnisFeld;
  i : integer;
  j : integer;
  k : integer;
begin
  { sortierte Felder einlesen }
  writeln ('Bitte', FELDLAENGE1:2, ' Werte des ersten Feldes ',
                                         'sortiert eingeben!');
  for i := 1 to FELDLAENGE1 do
    readln (Feld1[i]);
  writeln ('Bitte', FELDLAENGE2:2, ' Werte des zweiten Feldes ',
           'sortiert eingeben!');
  for j := 1 to FELDLAENGE2 do
    readln (Feld2[j]);

  { Verschmelzungsprozess beginnen }

{ Fuehren Sie das Programm geeignet weiter! }

  i := 1; {Zähler Feld1}
  j := 1; {Zähler Feld2}
  k := 1; {Zähler ErgebnisFeld}
 
  while (i <> 6) and (j <> 9) do
  {Zahlen sortiert zum ErgebnisFeld hinzufügen bis Feld1 oder Feld2
   abgearbeitet wurde.}
  begin
    if Feld1[i] < Feld2[j] then
      begin
        ErgebnisFeld[k] := Feld1[i];
        i := i + 1;
        k := k + 1
      end
    else {Feld2[j] < Feld1[i]}
      begin
        ErgebnisFeld[k] := Feld2[j];
        j := j + 1;
	k := k + 1
      end
  end;{while-Schleife}

  if i = 6 then
  {Feld1 abgearbeitet, Feld2 hinzufügen}
    for k := k to ERGEBNISFELDLAENGE do  
      ErgebnisFeld[k] := Feld2[k - 5]
  else
  {j = 9 somit Feld2 abgearbeitet, Feld1 hinzufügen}
    for k := k to ERGEBNISFELDLAENGE do  
      ErgebnisFeld[k] := Feld1[k - 8];
  
    writeln ('Das Ergebnisfeld ist:');
  for k := 1 to ERGEBNISFELDLAENGE do
    write (ErgebnisFeld[k], ' ');
  writeln
end.