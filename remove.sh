#!/bin/bash
remove()
{
docker ps -a | egrep 'load|Exited' | cut -d" " -f1 | xargs docker stop 2>/dev/null
docker ps -a | egrep 'load|Exited' | cut -d" " -f1 | xargs docker rm 2>/dev/null
docker images | sed 1d | grep -v "jenkins" | awk '{print $3}' | xargs docker rmi -f 2>/dev/null
return 0
}
