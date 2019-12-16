with usager; use usager;
with tableau_usager; use tableau_usager;
with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_text_io; use Ada.Integer_Text_IO;

procedure test_tableau_usager is
   usagers : Tab_usagers;  --tableau usager
   n : Integer;    -- nb d'element du tableau

begin
   lire_usagers(usagers,n);
   ecrire_usagers(usagers,n);
end test_tableau_usager;
