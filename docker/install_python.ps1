mkdir c:\t ; `
cd c:\t ; `

curl.exe -sSL -o python.exe https://www.python.org/ftp/python/3.10.1/python-3.10.1-amd64.exe ;
echo 'installing python' ;
Start-Process -Wait -FilePath ".\python.exe" `
  -ArgumentList `
    '/quiet', 'SimpleInstall=1', 'PrependPath=1', 'CompileAll=1', `
    'TargetDir=c:\python\', 'InstallAllUsers=1', 'Shortcuts=0', `
    'Include_docs=0', 'Include_tcltk=0', 'Include_tests=0' `
  ;

cd c:\ ; `
Remove-Item C:\t -Force -Recurse
