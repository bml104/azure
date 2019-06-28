connect-azaccount

$context = Get-AzSubscription | Select id

Set-AzContext -subscriptionid 

$rgs = Get-AzResourceGroup | select ResourcegroupName

write-output $rgs[1]

function Show-Menu
{
    param (
    [string]$Title = 'my menu'
    )
    Clear-host
    Write-Host "====================================="
    Write-Host "1: Press 1" $rgs[0]
    Write-Host "2: Press 1" $rgs[1]
    Write-Host "3: Press 1" $rgs[2]
    Write-Host "4: Press 1" $rgs[3]
    Write-Host "q to quit"


}


do
{

    Show-Menu -Title 'my menu'

    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
        '1'{
        " picked 1"
        $rsgrp = $rgs[0]
        }'2'{
        " picked 2"
        $rsgrp = $rgs[1]
        }'3'{
        "picked 3"
        $rsgrp = $rgs[2]
        }
        }
        pause
}
until ($selection -eq 'q')


$rsgrp