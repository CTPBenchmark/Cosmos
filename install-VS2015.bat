@echo off
echo  a88888b.
echo d8'   `88
echo 88        .d8888b. .d8888b. 88d8b.d8b. .d8888b. .d8888b.
echo 88        88'  `88 Y8ooooo. 88'`88'`88 88'  `88 Y8ooooo.
echo Y8.   .88 88.  .88       88 88  88  88 88.  .88       88
echo  Y88888P' `88888P' `88888P' dP  dP  dP `88888P' `88888P' operating system construction kit
echo.
echo Bienvenue sur le programme d'installation de Cosmos !
echo Modifie par valentinbreiz pour customprotocol.com/tags/cosmos
echo.
echo Pre-requis:
echo - Windows 7 ou plus
echo - Visual Studio 2015
echo - VMWare
echo - .NET Framework 4.5 
echo - .NET Framework 3.5 SP1
echo.
pause

cls
del source\Cosmos.Build.Builder\bin\Debug\Cosmos.Build.Builder.*

"Build\Tools\nuget.exe" restore "source\Cosmos.sln"

"%ProgramFiles(x86)%\MSBuild\14.0\Bin\msbuild.exe" "source\Builder.sln" /nologo /maxcpucount /p:Configuration="Debug" /p:Platform="Any CPU"

start source\Cosmos.Build.Builder\bin\Debug\Cosmos.Build.Builder.exe -bat -VS2015 %1 %2 %3 %4 %5 %6 %7 %8 %9
