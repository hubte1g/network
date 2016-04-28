/*** General reference ***/ #speedguide.net #https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
Port(s)|Protocol|Service|Details
88|udp|Kerberos|KDC (Kerberos key distribution center) server.Related ports: 464,543,544,749,751
2232|tcp,udp|,|,
22|udp,tcp,sctp|ssh|Secure Shell - most common use is command line access, secure replacement of Telnet. Could also be used as an encrypted tunnel for secure communication of virtually any service [RFC 4251], [RFC 4960]
2225|tcp,sctp,WinSCP|rcip-itu|Resource Connection Initiation Protocol, Stream Control Transmission Protocol
8443|tcp,udp|applications,J/ODBC|Common alternative https port.
PCSync HTTPS (SSL), SW Soft Plesk Control Panel, Apache Tomcat SSL, iCal service (SSL), Cisco WaaS Central Manager (SSL administration port)

tcp/udp PuTTy ssh 127.0.1.1:2232

%sh #Adds RSA to list of known hosts
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no 127.0.1.1 -p 2232 -l username

%
nc -v 127.0.0.15 88                                                                  ~ 1
Connection to 127.0.0.15 88 port [tcp/*] succeeded!

%
netstat -an | grep LISTEN | grep 88

%
ssh -vv -L9999:server.server.com:10001 -N 127.0.1.1 -p 2232 -l username       
$ ssh -vv -L9000:serverHive:10001 -N 127.0.1.1 -p 2232 -l  
netstat -an | grep LISTEN | grep 9000

%ami-ec2
ssh -vvv -i "C:/Tools/aws/aws-test-key-file-kss.pem" ec2-user@ec2-52-38-154-206.us-west-2.compute.amazonaws.com -p 22

%scp
 scp -P 2225 '\\networkDrive\share\Folder with space\file.txt' user@127.0.1.2:dest-folder/destFile.txt
