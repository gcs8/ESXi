$vmHosts = Get-VMHost
foreach ($vmHost in $vmHosts)
{
$view = (Get-VMHost $vmHost | Get-View)
(Get-View $view.ConfigManager.PowerSystem).ConfigurePowerPolicy(1)
}

#====================================================================

#This sets the Power Policy to High Performance (1)

#1=HighPerformance

#2=Balanced

#3=LowPower

