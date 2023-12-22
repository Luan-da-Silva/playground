docker build -t mongodb .
docker run -d -p 27017:27017 mongodb
docker exec nome_do_container  mongoimport -d db_test -c laureates --file /tmp/laureates.json --jsonArray
docker exec nome_do_container  mongoimport -d db_test -c prizes --file /tmp/prizes.json --jsonArray

