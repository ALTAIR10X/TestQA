﻿#language: ru

@tree

Функционал: Создание поступления

Как Менеджер по закупкам я хочу
Создает документ поступление товара 
чтобы создать документ поступления товара   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание товара
	И В командном интерфейсе я выбираю "Закупки" "Поступления товаров"
	Тогда открылось окно "Поступления товаров"
	И в таблице 'Список' я разворачиваю текущую строку
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Поступление товара (создание)"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем 'Склад' я выбираю точное значение 'Большой'
	Тогда элемент формы с именем 'Склад' стал равен "Большой"
			
	И из выпадающего списка с именем 'Поставщик' я выбираю точное значение 'Магазин "Бытовая техника"'
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000016" | "Тайфун-12"    |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000003" | "Туфли"        |
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Поступление товара (создание) *"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Артикул" | "Товар"     | "Цена"     |
		| "1" | "Ч-0001"  | "Bosch1234" | "2 500,00" |
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "5,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Артикул" | "Товар"     | "Цена"     |
		| "2" | "ПС-0002" | "Тайфун-12" | "6 500,00" |
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "3,00"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я перехожу к строке:
		| "N" | "Артикул" | "Товар" | "Цена"     |
		| "3" | "ОБ-002"  | "Туфли" | "1 500,00" |
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2,00"
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыСумма'
	И в таблице 'Товары' я завершаю редактирование строки
	* Проверка заполнения табличной части
		Тогда таблица 'Товары' содержит строки:
			| 'Товар'     | 'Артикул' | 'Цена'     | 'Количество' | 'Сумма'     |
			| 'Bosch1234' | '*'  | '2 500,00' | '5,00'       | '12 500,00' |
			| 'Тайфун-12' | '*' | '6 500,00' | '3,00'       | '19 500,00' |
			| 'Туфли'     | '*'  | '1 500,00' | '2,00'       | '3 000,00'  |
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	* Редактирования документа
		И я запоминаю значение поля "Номер" как "$НомерДока$"
	* Проверка документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Поступление товара (создание) *" в течение 20 секунд
	И таблица "Список" содержит строки:
		| 'Номер'|
		| "$НомерДока$"|
	
СЦЕНАРИЙ: Наличие элемента в справочнике
И В командном интерфейсе я выбираю "Товарные запасы" "Товары"
Тогда открылось окно "Товары"
И я нажимаю на кнопку с именем 'ФормаСписок'
И таблица "Список" содержит строки:
	| 'Наименование'| 
	| 'Торт'        |
