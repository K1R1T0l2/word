function Encrypt($path){
    $script = Get-Content $path | Out-String
    $secure = ConvertTo-SecureString $script -asPlainText -force
    $expert = $secure | ConvertFrom-SecureString
    Set-Content $path $expert
}
function Decrypt($path){
    $script = Get-Content $path
    $secure = ConvertTo-SecureString $raw
    $helper = New-Object system.Management.Automation.PSCredential("test",$secure)
    $plain = $helper.GetNetworkCredential().Password
    Set-Content $path $plain
}

Decrypt E:\a.txt