passo-a-passo: Postgres
# Roda o Dockerfile
docker build -t postgres_test .
# Roda o container no modo desacoplado ligando a porta 5432 do container com a do computador
docker run -d -p 5432:5432 postgres_test
# Restaura o banco dvdrental
docker exec -i nome_do_seu_container pg_restore -U postgres -v -d dvdrental < /path/com/o/arquivo/dvdrental.tar
# Instala a versão client do postgres. Aqui o container funcionará como servidor
sudo apt-get install postgresql-client
# Faz a requisição da query continda no arquivo (-f) test_query.sql para o servidor na porta (-p) 5432, no banco (-d) dvdrental, no usuário (-U) postgres
psql -h localhost -p 5432 -d dvdrental -U postgres -f queries/test_query.sql

Recomendação: utilize o Visual Studio para editar as suas queries. 

