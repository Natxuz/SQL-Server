-- Establecer cuantos días, horas y minutos han pasado entre dos fechas
declare @fecInicial as datetime
declare @fecFinal as datetime

set @fecInicial = '2015-03-03 10:11:00.000'
set @fecFinal = '2015-03-03 10:15:00.000'

SELECT CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)/(24*60)) as Dias, 
CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)%(24*60)/60) as Horas, 
CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)%60) as Minutos,
	'Abierde '
   + CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)/(24*60))
   + ' días, '
   + CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)%(24*60)/60)
   + ' horas y '
   + CONVERT(VARCHAR(40), DATEDIFF(minute, @fecInicial, @fecFinal)%60)
   + ' minutos.' as Mensaje
;
GO