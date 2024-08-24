﻿#language: ru

@tree
@БыстраяПроверка

Функционал: Проверка форм элементов спр. Организаии

Как Тестировщик я хочу
Проверить доступность вкладок налоги и валюты
чтобы убедиться что пользователь не ошибится при вводе данных   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка вкладки налоги и валюты
* Открытие элемента
	И В командном интерфейсе я выбираю "Справочники" "Организации"
	Тогда открылось окно "Организации"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Организация (создание)"
	* Присутствие на форме элементов
	И я устанавливаю флаг с именем 'OurCompany'
	И элемент формы "Валюты" присутствует на форме
	И элемент формы "Вид налога" присутствует на форме
* Отсутствие на форме элементов
	И я снимаю флаг с именем 'OurCompany'
	И я перехожу к закладке с именем 'GroupCurrencies'
	И элемент формы "Валюты" существует и невидим на форме
	И элемент формы "Вид налога" существует и невидим на форме

Сценарий: Проверка функциональной опции на видимость
И Я устанавливаю в константу "UseCompanies" значение "false"
И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
Тогда открылось окно "Заказы покупателей"
И я нажимаю на кнопку с именем 'FormCreate'
И элемент формы "Организация" отсутствует на форме

Сценарий: Проверка заполнение полей
	И В командном интерфейсе я выбираю "Справочники" "Организации"
	Тогда открылось окно "Организации"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Организация (создание)"
	И в поле с именем 'Description_en' я ввожу текст "Тестовый контрагент"
	И из выпадающего списка с именем 'Type' я выбираю точное значение "Организация"
	И я нажимаю на кнопку с именем 'FormWrite'
	Тогда элемент формы с именем 'Type' стал равен "Организация"
	Тогда элемент формы с именем 'Description_en' стал равен "Тестовый контрагент"
	И я закрываю все окна клиентского приложения		
Сценарий: Проверка расположение элементов
	И В командном интерфейсе я выбираю "Справочники" "Организации"
	Тогда открылось окно "Организации"
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно "Организация (создание)"
