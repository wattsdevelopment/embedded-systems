with HWIF; use HWIF;

procedure Controller is
   task Pedestrian_Task;
   task Emergency_Task;


   task body Pedestrian_Task is
   begin

      null;

   end Pedestrian_Task;

   task body Emergency_Task is
   begin

      null;

   end Emergency_Task;

begin
   loop
      -- 4 = Red, 6 = 1Red/Amber, 2 = Amber, 1 = Green
      Traffic_Light(North) := 6;
      Traffic_Light(South) := 6;
      delay 1.0;

      Traffic_Light(North) := 1;
      Traffic_Light(South) := 1;
      delay 6.0;

      Traffic_Light(North) := 2;
      Traffic_Light(South) := 2;
      delay 4.0;

      Traffic_Light(North) := 4;
      Traffic_Light(South) := 4;
      delay 2.0;

      Traffic_Light(East) := 6;
      Traffic_Light(West) := 6;
      delay 1.0;

      Traffic_Light(East) := 1;
      Traffic_Light(West) := 1;
      delay 6.0;

      Traffic_Light(East) := 2;
      Traffic_Light(West) := 2;
      delay 4.0;
      Traffic_Light(East) := 4;
      Traffic_Light(West) := 4;
      delay 2.0;

   end loop;
end Controller;
