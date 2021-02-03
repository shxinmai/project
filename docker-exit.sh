 
docker ps | grep netcore_testweb | grep netcore_testadmin &> /dev/null 
if [ $? -ne 0 ]
then
    echo "core is not up,we will start up it!!!"
    docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml up -d
else
    echo "core is up!!! we will stop it !!!!!"
   docker-compose -f /data/jenkins_home/workspace/Test/docker-compose.yml down
fi