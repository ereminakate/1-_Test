﻿
&НаСервере
Процедура СформироватьНаСервере()
	Запрос = Новый Запрос;
	Запрос.УстановитьПараметр("Период", КонецДня(Дата));
	Запрос.Текст =
	"ВЫБРАТЬ
	|	ОстаткиНоменклатурыОстатки.Номенклатура КАК Товар,
	|	СУММА(ОстаткиНоменклатурыОстатки.КоличествоОстаток) КАК Количество
	|ИЗ
	|	РегистрНакопления.ОстаткиНоменклатуры.Остатки(&Период, ) КАК ОстаткиНоменклатурыОстатки
	|
	|СГРУППИРОВАТЬ ПО
	|	ОстаткиНоменклатурыОстатки.Номенклатура";
	
	Результат = Запрос.Выполнить().Выгрузить();
	
	Остатки.Загрузить(Результат);
КонецПроцедуры

&НаКлиенте
Процедура Сформировать(Команда)
	СформироватьНаСервере();
КонецПроцедуры
