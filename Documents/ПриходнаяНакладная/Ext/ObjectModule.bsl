
Процедура ОбработкаПроведения(Отказ, Режим)

	Движения.ОстаткиНоменклатуры.Записывать = Истина;
	Для Каждого ТекСтрокаСписокНоменклатуры Из СписокНоменклатуры Цикл
		Движение = Движения.ОстаткиНоменклатуры.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаСписокНоменклатуры.Номенклатура;
		Движение.Количество = ТекСтрокаСписокНоменклатуры.Количество;
	КонецЦикла;
    Движения.Записать();  
	
КонецПроцедуры
