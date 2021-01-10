# 1. Docker con PostgreSQL

## 1.1. [Crear el container](https://hub.docker.com/_/postgres)

```sh
sudo docker run --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -d postgres -p 5432:5432
```

## 1.2. Ingresar

```sh
sudo docker exec -it some-postgres psql postgres -U postgres
```

## 1.3. [How to get a Docker container's IP address from the host](https://stackoverflow.com/questions/17157721/how-to-get-a-docker-containers-ip-address-from-the-host)

```sh
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
```

Muestra la ip en la que esta corriendo el container, 
Valores por defecto:
| port | rol      | database | scheme   |
| ---- | -------- | -------- | -------- |
| 5432 | postgres | postgres | postgres |

## 1.4. Cargar archivos

```sh
sudo docker exec -i some-postgres psql -U postgres postgres < 'file.sql'
```

## 1.5. [Ejecutar sin root](https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket)

```sh
sudo usermod -aG docker ${USER}
```

<!--stackedit_data:
eyJoaXN0b3J5IjpbMzg0MjA1OTI3LC0xMDIyMjU0NjEwLC01OT
MzNjQ1MDddfQ==
-->
