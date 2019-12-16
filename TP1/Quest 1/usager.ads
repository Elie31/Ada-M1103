package usager is

  LONGUEUR_NOM : constant Integer :=20;
   type Enregistrement is record
      numero_adherent : Integer;
      nom : String(1..LONGUEUR_NOM);
      longueur : Integer;
      annee_naissance : Integer;
   end record;

   usager : Enregistrement;

   procedure lire_usager(usager: out Enregistrement); -- remplie la variable enregistrement
   procedure ecrire_usager(usager: in Enregistrement); -- ecrit le nom de l'usager
   function age_usager(usager: in Enregistrement) return Integer; -- ecrit age usager

end usager;
