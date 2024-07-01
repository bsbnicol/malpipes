# number of named pipes to create
$numpipes = 50

# pipe names
$pipeName1  = "mojo.5688.8052.183894939787088877a2"
$pipeName2  = "mojo.5688.8052.1838949397870888770b"
$pipeName3  = "mojo.5688.8052.35780273329370473c2"
$pipeName4  = "mojo.5688.8052.35780273329370473ff"

$pipeName5  = "wkssvc_aa"
$pipeName6  = "wkssvc0f"

$pipeName7  = "ntsvcsaf"
$pipeName8  = "ntsvcs12"
$pipeName9  = "ntsvcs_3f"
$pipeName10 = "ntsvcs_f0"

$pipeName11 = "DserNamePipe00"
$pipeName12 = "DserNamePipef3"

$pipeName13 = "SearchTextHarvester09"
$pipeName14 = "SearchTextHarvestercf"

$pipeName15 = "mypipe-f00"
$pipeName16 = "mypipe-fff"
$pipeName17 = "mypipe-hc3"
$pipeName18 = "mypipe-h32"

$pipeName19 = "windows.update.managerc2"
$pipeName20 = "windows.update.manager3f"
$pipeName21 = "windows.update.managerfff"
$pipeName22 = "windows.update.manager01d"

$pipeName23 = "scerpc_00"
$pipeName24 = "scerpc_f0"
$pipeName25 = "scerpc0d"
$pipeName26 = "scerpceb"

$pipeName27 = "PGMessagePipe01"
$pipeName28 = "PGMessagePipeb3"

$pipeName29 = "MsFteWds00"
$pipeName30 = "MsFteWdsb9"

$pipeName31 = "f4c3ff"
$pipeName32 = "f4c3bb"
$pipeName33 = "f4c3a0"
$pipeName34 = "f4c300"

$pipeName35 = "fullduplex_9a"
$pipeName36 = "fullduplex_bb"

$pipeName37 = "msrpc_0000"
$pipeName38 = "msrpc_12c4"
$pipeName39 = "msrpc_ab3d"
$pipeName40 = "msrpc_f19a"

$pipeName41 = "win\\msrpc_00"
$pipeName42 = "win\\msrpc_b3"

$pipeName43 = "f53f00"
$pipeName44 = "f53fa9"

$pipeName45 = "rpc_f3"
$pipeName46 = "rpc_1b"

$pipeName47 = "spoolss_dd"
$pipeName48 = "spoolss_0a"

$pipeName49 = "Winsock2\\CatalogChangeListener-000-0,"
$pipeName50 = "Winsock2\\CatalogChangeListener-f3a-0,"

# create a named pipe for each of the above pipe names
for (($i = 1); $i -le $numpipes; $i++)
{
	New-Object system.IO.Pipes.NamedPipeServerStream($(Get-Variable "pipeName$i" -ValueOnly))
}