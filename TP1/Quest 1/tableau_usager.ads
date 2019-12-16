with usager; use usager;

package tableau_usager is

   TAILLE_MAX : constant Integer := 100;
   type Tab_usagers is array (1..TAILLE_MAX) of Enregistrement;

   procedure lire_usagers(usagers: out Tab_usagers; n: out Integer);
   procedure ecrire_usagers(usagers: in Tab_usagers;n: in Integer);

end tableau_usager;
