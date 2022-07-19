with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   EndVal : Integer := 2000000;
   type sieve_type is array (2..EndVal) of Boolean;
   sieve_array : sieve_type := (others=>True);
   Answer : Long_Long_Integer :=0;
   J: Integer;

begin

   for I in 2..EndVal loop
      if sieve_array(I) then
         Answer := Answer + Long_Long_Integer(I);
         --Put_Line(Integer'Image(I));
         J := I * 2;
         while J <= EndVal loop

            sieve_array(j) := False;

            J := J + I;

         end loop;

      end if;

   end loop;

   Put_Line(Long_Long_Integer'Image(Answer));

end Main;
