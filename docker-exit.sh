 
a= $(docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml ps | grep "netcore" | wc -l)
if [ $a <=0 ]
then
    echo "core is not up,we will start up it!!!"
    docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml up -d
else
    echo "core is up!!! we will stop it !!!!!"
    docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml down
    echo "next we will remove docker images !!!!!!"
    docker rmi --force `docker images | grep "test" | awk '{print $3}'`
    echo "the end we will start up "
    docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml up -d
fi

