with Ada.Text_IO; use Ada.Text_IO;
with operations_systeme ; use operations_systeme;
with code ; use code;
-- Programme principal
	procedure verifier_un_code is
	   N : constant Integer := 4;
	   type Tab_caracteres is array (1 .. N) of Character;
	   -- lit et range 4 entiers dans le tableau tab_chiffres
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

	   -- retourne VRAI si le code mémorisé dans le tableau tab_chiffres est
	   -- correct et FAUX sinon
	   -- entraine résultat = (valeur_chiffre(tab_chiffres(4))=
	   -- (valeur_chiffre(tab_chiffres(1))
	   -- 	+ valeur_chiffres(tab_chiffre(2))
	   --	+ valeur_chiffres(tab_chiffre(3))) mod 7)
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

	      -- Glossaire du programme principal
	   code : Tab_caracteres; -- chiffre du code

	begin
	   -- Demander à l'utilisateur de fournir un code et lire le code
	   lire_code (tab_chiffres => code);
	   -- Vérifier le code
	   if code_valide (tab_chiffres => code) then
	      Put ("Ce code est correct. Prêt à photocopier ");
	   else
	      Put ("Ce code n'est pas correct pour ce photocopieur ");
	   end if;

	end verifier_un_code;
