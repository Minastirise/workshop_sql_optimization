# workshop_sql_optimization
 Оптимизация SQL

## Запуск
- Из терминала перейдите в папку  
./postgres  
  
- Выполните команду  
docker-compose up  
  
- Дождитесь следующего сообщения:  
LOG:  database system is ready to accept connections  
  

- Зайтите в DBeaver, подключитесь к БД со следующими реквизитами:  
Хост: localhost  
Порт: 5430  
База данных: test  
Пользователь: postgres  
Пароль: password  
  
- Проверьте, что данные в базу dev_stg загрузились успешно (должно быть 10 000 000):  
select count(*) from block11

## Для завершения работы 
- В новом окне терминала перейти в папку ./postgres
- Выполнить следующую команду из нового терминала:  
docker-compose down --remove-orphans --volumes  
