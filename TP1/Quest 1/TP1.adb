with Ada.Text_IO; use Ada.Text_IO;
with ada.Integer_text_io; use Ada.Integer_Text_IO;
with usager; use usager;

procedure TP1 is

   usager : Enregistrement;
   age : Integer;

begin
   lire_usager(usager);
   ecrire_usager(usager);
   age:= age_usager(usager);
   New_Line;
   put("L'age de l'usager est de ");
   put(age,0);
   put("ans");

end TP1;
