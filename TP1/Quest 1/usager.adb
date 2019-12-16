with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_text_io; use Ada.Integer_Text_IO;

package body usager is

   -----------------
   -- lire_usager --
   -----------------

   procedure lire_usager (usager : out Enregistrement) is
   begin

      put_line("Quel est le numero d'adherent de l'usager ?");
      get(usager.numero_adherent);
      skip_line;
      put_line("Quel est le nom de l'usager ?");
      get_line(usager.nom, usager.longueur);
      put_line("Quel est l'annee de naissance de l'usager ?");
      get(usager.annee_naissance);


      --  Generated stub: replace with real body!

   end lire_usager;

   -------------------
   -- ecrire_usager --
   -------------------

   procedure ecrire_usager (usager : in Enregistrement) is
   begin
      --  Generated stub: replace with real body!

      New_Line;
      put("Le numero d'adherant de l'usager est ");
      put(usager.numero_adherent);
      New_Line;
      put("Son nom est ");
      put(usager.nom(1..usager.longueur));
      New_Line;
      put("Son annee de naissance est ");
        put(usager.annee_naissance);

   end ecrire_usager;

   ----------------
   -- age_usager --
   ----------------

   function age_usager (usager : in Enregistrement) return Integer is

      age : Integer;
   begin
      --  Generated stub: replace with real body!

      age := 2019 - usager.annee_naissance;

      return age;


   end age_usager;



end usager;
