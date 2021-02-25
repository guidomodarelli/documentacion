name='laCasaDeLosCristales'
sudo docker run --name $name --env POSTGRES_PASSWORD=$name --detach --publish 5432:5432 postgres
