with Ada.Text_IO; use Ada.Text_IO;
package body code is

   --------------------
   -- valeur_chiffre --
   --------------------

   function valeur_chiffre (c : in Character) return Integer is
   begin
      return (Character'Pos (c) - Character'Pos ('0'));
   end valeur_chiffre;

      procedure lire_code (tab_chiffres : out Tab_caracteres) is
	   begin
	      Put ("Entrer le premier chiffre du code d'identification : ");
 	      Get (tab_chiffres (1));
	      Put ("Entrer le second chiffre du code d'identification : ");
	      Get (tab_chiffres (2));
	      Put ("Entrer le troisième chiffre du code d'identification : ");
	      Get (tab_chiffres (3));
	      Put ("Entrer le quatrième chiffre du code d'identification : ");
	      Get (tab_chiffres (4));
      end lire_code;

      function code_valide (tab_chiffres : in Tab_caracteres) return Boolean is
	chiffre_du_reste : Integer; --chiffre attendu comme contrôle

	   begin
	      -- déterminer le chiffre du reste
	      chiffre_du_reste :=
	        (valeur_chiffre (tab_chiffres (1)) +
	         valeur_chiffre (tab_chiffres (2)) +
	         valeur_chiffre (tab_chiffres (3))) mod
	        7;
	      -- tester si le code est correct
	      return (chiffre_du_reste = valeur_chiffre (tab_chiffres (4)));
      end code_valide;

end code;
