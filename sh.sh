%sh

%
nc -v 127.0.0.15 88                                                                  ~ 1
Connection to 127.0.0.15 88 port [tcp/*] succeeded!

%
netstat -an | grep LISTEN | grep 88

%
