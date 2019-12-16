with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Calcule votre note finale d'algorithmique sur 20
procedure note is

   note : Integer;

begin
   -- lecture de la note
   New_Line;
   Put_Line ("Quelle est votre note en algorithmique ? ");
   Get (note);
   -- modification de la note
   if note < 20 then
      note := note + 1;
   end if;
   -- affichage de la note
   Put ("Votre note est ");
   Put (note);
   Put_Line ("/20 car vous avez bien travaille !!");
   New_Line;

end note;
