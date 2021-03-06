-- File   : gpsmain_ada2012_ch01.adb
-- Date	: Sat 13 Feb 2021 11:12:29 AM +08
-- Env	: Linux HPEliteBook8470p-Ub2004-rt38 5.4.66-rt38
-- #1 SMP PREEMPT_RT Sat Sep 26 16:51:59 +08 2020 x86_64 x86_64 x86_64 GNU/Linux
-- Author: WRY
-- ========================================================
-- GPS 19.2 (@GPS_DATE@) hosted on x86_64-linux-gnu)
-- GNAT 9.3.0 the GNAT Programming Studio (c) 2001-2019.2 AdaCore
-- AppIDE: /usr/bin/gnat-gps
-- ========================================================

-- ADA STANDARD PACKAGES
with Ada.Text_IO;

-- USER CREATED PACKAGES

-- ========================================================
procedure gpsmain_ada2012_ch01 is
-- ========================================================
   package ATIO    renames Ada.Text_IO;

begin
   ATIO.Put_line("Bismillah WRY for gpsmain_ada2012_ch01.adb" );

   ATIO.Put_line("Alhamdulillah WRY for gpsmain_ada2012_ch01.adb" );
-- ========================================================
-- Catch every possible error using built-in package Ada.Standard
-- ========================================================
exception
	when Constraint_Error =>
		ATIO.Put_Line("Constraint_Error raised.");
	when Program_Error =>
		ATIO.Put_Line("Program_Error raised.");
	when Storage_Error =>
		ATIO.Put_Line("Storage_Error raised.");
	when Tasking_Error =>
		ATIO.Put_Line("Task_Error raised.");
	when Others =>
       ATIO.Put_Line("Others raised. Unknown error.");

  -- null;
end gpsmain_ada2012_ch01;

-- COMPILATION
-- ========================================================
-- IDE Menu -> Build -> Clean -> Clean All
-- IDE Menu -> Project -> Build All
-- gprbuild -d -P/home/wruslan/github/gps-ada2012-ch01/gps_ada2012_ch01.gpr -s -k
-- Compile
--   [Ada]          gpsmain_ada2012_ch01.adb
-- Bind
--   [gprbind]      gpsmain_ada2012_ch01.bexch
--   [Ada]          gpsmain_ada2012_ch01.ali
-- Link
--   [link]         gpsmain_ada2012_ch01.adb
-- [2021-02-13 12:55:39] process terminated successfully, elapsed time: 00.92s

-- EXECUTION
-- ========================================================
-- IDE Menu -> Build -> Run -> ./gpsmain_ada2012_ch01.adx
-- wruslan@HPEliteBook8470p-Ub2004-rt38:~/github/gps-ada2012-ch01/exec$ ./gpsmain_ada2012_ch01.adx
-- Bismillah WRY for gpsmain_ada2012_ch01.adb
-- Alhamdulillah WRY for gpsmain_ada2012_ch01.adb
-- wruslan@HPEliteBook8470p-Ub2004-rt38:~/github/gps-ada2012-ch01/exec$
-- ========================================================
