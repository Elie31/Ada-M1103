with Ada.Float_Text_Io, Ada.Integer_Text_Io, Ada.Text_Io,
  Ada.Numerics.Float_Random, Compteurs, Tableau, compter_tris;
use Ada.Float_Text_Io, Ada.Integer_Text_Io, Ada.Text_Io,
    Ada.Numerics.Float_Random, Compteurs, Tableau, compter_tris;

procedure Compter_tri_insertion is
   T : Tablo (1..Lg_Max_Tableau); -- le tableau à trier
   Cpt_Comp : Compteur; -- compteur de comparaisons
   Cpt_Affec : Compteur; -- compteur d'affectations
   G : Generator; -- générateur de nombres aléatoires
   Fic : File_Type; -- fichier de résultats
begin
   Reset (G); -- reset les chiffre aléatoire
   Create (Fic, Name => "insertion.txt"); -- crée le fichier bulles.txt
   Put_Line ("Longueur des tableaux triés :");
   for Lg in 1..T'Last loop
      Raz (Cpt_Comp);
      Raz (Cpt_Affec);
      for I in 1..Nb_Tris loop
         for I in 1..lg loop
            T(I) := Random (G);
         end loop;
         Trier_insertion_Cpt (T(1..Lg), Cpt_Comp, Cpt_Affec);
      end loop;
      Put(Lg);
      New_Line;
      Put(Fic, Lg);
      Put(Fic, Valeur(Cpt_Comp)/Nb_Tris);
      Put(Fic, Valeur(Cpt_Affec)/Nb_tris);
      New_Line(Fic);
   end loop;
   New_Line;
   Close(Fic);
end Compter_tri_insertion;
