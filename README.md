* Используйте secrets.example.yml для создания secrets.yml с настройками для бд

* rake db:migrate
* rake db:seed (наполняем бд данными городов - файл был взят с geonames.org)

Задание:
Написать на ruby web-сервер, который возвращает текущее время UTC. Опционально сервер может принимать названия городов и показывать текущее время для них.

Также сервер должен максимально быстро возвращать результат и поддерживать большое кол-во соединений.

Примеры запросов:

/time

UTC: 2015-04-11 10:30:50

/time?Moscow,New%20York

UTC: 2015-04-11 10:30:50

Moscow: 2015-04-11 13:30:50

New York: 2015-04-11 02:30:50