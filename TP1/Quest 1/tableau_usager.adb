with usager; use usager;
with tableau_usager; use tableau_usager;
with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_text_io; use Ada.Integer_Text_IO;

package body tableau_usager is

   -----------------
   -- lire_usager --
   -----------------

   procedure lire_usagers (usagers: out Tab_usagers; n: out Integer) is
      pragma Unreferenced (n);
      c: Integer;
      i: Integer;
   begin
      c:= 0;
      --  Generated stub: replace with real body!
      while c/=1 and i <= TAILLE_MAX loop
      i:= i + 1;
      lire_usager(usagers(i));
      put("Voulez-vous saisir un nouvel usager (Taper 1 pour arreter) ? ");
      get(c);

      end loop;
      n:= i;

   end lire_usagers;


   -------------------
   -- ecrire_usager --
   -------------------

   procedure ecrire_usagers (usagers: in Tab_usagers; n: in Integer) is
      i: Integer;
   begin
      --  Generated stub: replace with real body!
      i:=1;
      New_Line;
      put("Les usagers sont :");
      New_Line;
      while i <= n loop
      ecrire_usager(usagers(i));
      i:=i +1;
      end loop;

   end ecrire_usagers;

end tableau_usager;
