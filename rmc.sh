APP_NAME=$1
if [ $APP_NAME ]
then
  CONTAINER=`docker ps -aq -f name=$APP_NAME`
  if [ "$CONTAINER"!='' ]
  then
    docker stop $(docker ps -aq -f name=$APP_NAME)
    docker rm $(docker ps -aq -f name=$APP_NAME)
  else
    echo "$APP_NAME doesn't exist"
  fi
else
  echo "please pass app name argument"
fi

