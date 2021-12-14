mkdir c:\t ;
cd c:\t ;

echo 'test';
echo 'installing perl';
curl.exe -sSL -o perl.zip `
    https://strawberryperl.com/download/5.26.3.1/strawberry-perl-5.26.3.1-64bit-portable.zip ;
7z.exe x .\perl.zip -xr!c -oc:\strawberry ;

cd c:\ ; `
Remove-Item C:\t -Force -Recurse
