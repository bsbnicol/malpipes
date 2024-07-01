# number of named pipes to create
$numpipes = 27

# pipe names
$pipeName1  = 'isapi_http'  # Uroburos Malware
$pipeName2  = 'isapi_dg'    # Uroburos Malware
$pipeName3  = 'isapi_dg2'   # Uroburos Malware

$pipeName4  = 'sdlrpc'  # Cobra Trojan

$pipeName5  = 'ahexec'  # Sofacy group malware

$pipeName6  = 'winsession'  # Wild Neutron APT malware

$pipeName7  = 'lsassw'  # Wild Neutron APT malware

$pipeName8  = '46a676ab7f179e511e30dd2dc41bd388'  # Project Sauron
$pipeName9  = '9f81f59bc58452127884ce513865ed20'  # Project Sauron
$pipeName10 = 'e710f28d59aa529d6792ca6ff0ca1b34'  # Project Sauron
$pipeName11 = 'rpchlp_3'                          # Project Sauron

$pipeName12 = 'NamePipe_MoreWindows'  # Cloud Hopper - RedLeaves
$pipeName13 = 'pcheap_reuse'  # Pipe used by Equation Group malware
$pipeName14 = 'gruntsvc' # Covenant default
$pipeName15 = '583da945-62af-10e8-4902-a8f205c72b2e'  # SolarWinds SUNBURST malware
$pipeName16 = 'bizkaz'  # Snatch Ransomware
$pipeName17 = "svcctl" #Crackmapexec smbexec default

$pipeName18 = 'a7s91jc021' #PoshC2 Random-Pipe name
$pipeName19 = 'mq9rn2s60s' #PoshC2 Random-Pipe name 
$pipeName20 = 'mae105k91l' #PoshC2 Random-Pipe name

$pipeName21 = 'jaccdpqnvbrrxlaf' #PoshC2 default
$pipeName22 = 'csexecsvc' #CSEXEC default
$pipeName23 = '6e7645c4-32c5-4fe3-aabf-e94c2f4370e7'  # LiquidSnake
$pipeName24 = 'adschemerpc'  # Turla HyperStack
$pipeName25 = 'AnonymousPipe'  # Hidden Cobra Hoplight
$pipeName26 = 'bc367'  # Pacifier
$pipeName27 = 'bc31a7'  # Pacifier
$pipeName28 = 'testPipe'  # Emissary Panda Hyperbro
$pipeName29 = 'dce_3d' #Qbot

# create a named pipe for each of the above pipe names
for (($i = 1); $i -le $numpipes; $i++)
{
	New-Object system.IO.Pipes.NamedPipeServerStream($(Get-Variable "pipeName$i" -ValueOnly))
}