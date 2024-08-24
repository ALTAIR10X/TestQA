﻿#language: ru

@tree

Функционал: проверка создания клиента

Как оператор я хочу
создать клиента 
чтобы ввести клиенскую базу   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка создания клиента
*Открытие формы клиента
	И В командном интерфейсе я выбираю "Продажи" "Контрагенты"
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	
*Заполнение наименования клиента
	Когда открылось окно "Контрагент (создание)"
	И в поле с именем 'Наименование' я ввожу текст "Тестовый"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Оптовая"
	
*Заполнение номера клиента
	Когда открылось окно "Контрагент (создание) *"
	И в поле с именем 'Телефон' я ввожу текст "8-424-421-44-11"
	
*Сохранение
	Когда открылось окно "Контрагент (создание) *"
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	
*Проверка сохранение по коду
И я запоминаю значение поля "Код" как "Код"
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна "Тестовый (Контрагент)" в течение 20 секунд
Тогда открылось окно "Контрагенты"
И я нажимаю на кнопку с именем 'ФормаСписок'
Тогда таблица 'Товары' содержит строки:
	| 'Код' |
	| '$Код$'    |


