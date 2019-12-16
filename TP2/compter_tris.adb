with Tableau, tris, Compteurs ;
use Tableau, tris, Compteurs;

package body compter_tris is

   ----------------------
   -- Trier_Bulles_Cpt --
   ----------------------

   procedure Trier_Bulles_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      Dernier : Positive := T'First + 1; -- positon du dernier échange
      Trie    : Boolean  := False; -- indique si le tableau est trié
   begin
      while not Trie loop
         Trie := True;
         for J in reverse Dernier .. T'Last loop
            Incr (Cpt_Comp);
            if T (J) < T (J - 1) then
               Echanger (T (J), T (J - 1));
               Incr (Cpt_Affec, 3);
               Trie    := False;
               Dernier := J;
            end if;
         end loop;
      end loop;
   end Trier_Bulles_Cpt;



     procedure Trier_pivot_cpt (T : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur) is
      I : Natural := T'First; -- tous les éléments jusqu'à i sont <= pivot
      J : Natural := T'Last; -- tous les éléments après j sont > pivot
      P : Float; -- élément pivot
   begin
      if T'Length > 1 then
         P := T (T'First);
         Incr (Cpt_Affec);

         while I < J loop
            Incr (Cpt_Comp);

            if T (J) >= P then
               J := J - 1;
            elsif T (I + 1) < P then
               Incr (Cpt_Comp);
               T (I) := T (I + 1);
               Incr (Cpt_Affec);

               I     := I + 1;
            else
               Incr (Cpt_Comp);
               T (I) := T (J);
               T (J) := T (I + 1);
               Incr (Cpt_Affec,2);

               I     := I + 1;
               J     := J - 1;
            end if;
         end loop;
         T (I) := P;
         Incr (Cpt_Affec);

         Trier_Pivot_cpt (T (T'First .. I - 1), cpt_comp, cpt_affec);
         Trier_Pivot_cpt (T (I + 1 .. T'Last), cpt_comp, cpt_affec);
      end if;
   end Trier_Pivot_cpt;



    procedure Trier_Shell_cpt (T : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur) is
      Inc : Natural := T'Length / 2;
      J   : Integer;
   begin
      while Inc > 0 loop
         for I in Inc + 1 .. T'Last loop
            J := I - Inc;
            while J > 0 loop
               Incr (Cpt_Comp);
               if T (J) > T (J + Inc) then
                  Echanger (T (J), T (J + Inc));
                  Incr (Cpt_Affec,3);
                  J := J - Inc;
               else
                  J := 0;
               end if;
            end loop;
         end loop;
         Inc := Inc / 2;
      end loop;
   end Trier_Shell_cpt;

end compter_tris;
