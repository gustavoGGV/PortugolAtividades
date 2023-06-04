funcao processa_saque(inteiro valor_saque)
	{
		
		notas_50 = valor_saque / 50 // siga esta ideia para programar as duas linhas abaixo
		notas_20 = valor_saque % 50 / 20
		notas_10 = valor_saque % 50 % 20 / 10
	}
