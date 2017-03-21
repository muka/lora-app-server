
now=`date +%N`
ctname="lorawanui_build_$now"

echo "container name is $ctname"

docker build . -t lorawanui_build

docker run --name $ctname -t lorawanui_build &

echo "container started $ctname, waiting for bootstrap"

sleep 5
docker cp $ctname:/build ./build

echo "container copied files $ctname"

docker kill $ctname
docker rm -f $ctname
echo "container killed $ctname"
