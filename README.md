# practD
Как можно работать с таблицами в MySQL на языке D (D lang)
Для работы с базой данных (таблица test в MySQL), необходимо экспортировать структуру из import_test.sql
Внешний вид окна в браузере:

![image](https://github.com/alex1543/practD/assets/10297748/ed176704-e384-47fe-a9b4-9b5e0bc43cb1)

Пример не требует web-сервера Apache. Достаточно запустить файл build.bat и открыть страницу: http://127.0.0.1:8080/

Программа будет гарантированно работать, есть выполнить след. действия:
1) установить язык D (Dlang) из dmd-2.103.1.exe с сайта: https://dlang.org/ в каталог C:\D\
2) распаковать архив mysql-5.7.41-win32.zip с сайта: https://downloads.mysql.com/archives/community/ и файл libmysql.lib из подкаталога mysql-5.0.15-win32\lib\opt\ в архиве перенести в каталог с примером.
3) распаковать весь репозиторий https://github.com/adamdruppe/arsd в каталог C:\D\dmd2\src\phobos\arsd\
