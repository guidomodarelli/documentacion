name='mi_tesis'
dir='/home/guido/Documents/tesis/tesis-api-restful/src/database/tesis_final_create'
sudo docker exec -i $name psql postgres -U postgres < $dir
