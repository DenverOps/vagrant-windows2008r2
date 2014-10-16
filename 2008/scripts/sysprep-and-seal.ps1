Remove-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name "SysprepAndSeal" -ErrorAction SilentlyContinue
$ObjUser = [ADSI]"WinNT://localhost/vagrant"; 
$ObjUser.userflags = 2; 
$ObjUser.setinfo(); 

C:\Windows\System32\sysprep\sysprep.exe /generalize /oobe /quiet /shutdown