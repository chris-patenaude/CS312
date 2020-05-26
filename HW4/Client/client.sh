
while :
do
    time=$(date +"%T")
    echo "Current time: $time"
    curl 172.17.0.2:8080
    sleep 3
done