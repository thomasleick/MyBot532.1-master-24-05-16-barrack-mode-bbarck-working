@ECHO OFF

::initialize
SET version=v1.1
SET versiondate=29-02-1016
TITLE MyBot Multiple Bot Runner %version%
SET pro=1

:input

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Select Emulator You Prefer               #
ECHO   #  1 - Bluestacks                           #
ECHO   #  2 - Bluestacks 2                         #
ECHO   #  3 - Droid4X                              #
Echo   #  4 - MEmu                                 #
Echo   #  5 - Exit                                 #
ECHO   #                                           #
ECHO   #############################################
ECHO.

::SET /P emu=""

choice /c 12345 /n

IF "%errorlevel%" == "1" (
	ECHO Starting MyBot With Bluestacks
	start mybot.run.exe %pro% BlueStacks && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO input
) ELSE IF "%errorlevel%" == "2" (
	ECHO Starting MyBot With Bluestacks 2
	start mybot.run.exe %pro% BlueStacks2 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO input
) ELSE IF "%errorlevel%" == "3" (
	ECHO Starting MyBot With Droid4X
	start mybot.run.exe %pro% Droid4X && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO input
) ELSE IF "%errorlevel%" == "4" (
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "5" (
	exit
) ELSE (
	ECHO Wrong Input
	GOTO input
)

:memuoptions

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Select MEmu Instance You Prefer          #
ECHO   #  0 - MEmu                                 #
ECHO   #  1 - MEmu_1                               #
ECHO   #  2 - MEmu_2                               #
ECHO   #  3 - MEmu_3                               #
Echo   #  4 - MEmu_4                               #
Echo   #  5 - MEmu_5                               #
Echo   #  6 - MEmu_6                               #
Echo   #  7 - MEmu_7                               #
Echo   #  8 - Type Instance Name                   #
Echo   #  9 - Back To Main Menu                    #
ECHO   #                                           #
ECHO   #############################################
ECHO.

choice /c 1234567890 /n

IF "%errorlevel%" == "1" (
	ECHO Starting MyBot With MEmu_1
	start mybot.run.exe %pro% MEmu MEmu_1 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "2" (
	ECHO Starting MyBot With MEmu_2
	start mybot.run.exe %pro% MEmu MEmu_2 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "3" (
	ECHO Starting MyBot With MEmu_3
	start mybot.run.exe %pro% MEmu MEmu_3 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "4" (
	ECHO Starting MyBot With MEmu_4
	start mybot.run.exe %pro% MEmu MEmu_4 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "5" (
	ECHO Starting MyBot With MEmu_5
	start mybot.run.exe %pro% MEmu MEmu_5 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "6" (
	ECHO Starting MyBot With MEmu_6
	start mybot.run.exe %pro% MEmu MEmu_6 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "7" (
	ECHO Starting MyBot With MEmu_7
	start mybot.run.exe %pro% MEmu MEmu_7 && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE IF "%errorlevel%" == "8" (
	GOTO memutype
) ELSE IF "%errorlevel%" == "9" (
	GOTO input
) ELSE IF "%errorlevel%" == "10" (
	ECHO Starting MyBot With MEmu
	start mybot.run.exe %pro% MEmu && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
) ELSE (
	ECHO Wrong Input
	GOTO memuoptions
)

:memutype

cls
ECHO MyBot Multiple Bot Runner %version%
ECHO %versiondate%
ECHO By AminTalkin
ECHO.
ECHO   #############################################
ECHO   #                                           #
ECHO   #  Type MEmu Instance Name And Press Enter  #
ECHO   #  Type 9 And Press Enter To Go Back        #
ECHO   #                                           #
ECHO   #############################################
ECHO.

SET /P memuname="Type MEmu Instance Name: "

IF "%memuname%" == "9" (
	GOTO memuoptions
) ELSE IF "%memuname%" == "" (
	GOTO memutype
) ELSE (
	ECHO Starting MyBot With %memuname%
	start mybot.run.exe %pro% MEmu %memuname% && (
		echo Mybot Started Successfully
		SET /A pro=%pro%+1
	) || (
		echo Srating Mybot Failed
	)
	GOTO memuoptions
)