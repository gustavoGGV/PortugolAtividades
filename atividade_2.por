//Meu código ficou talvez desnecessariamente grande, MAS FUNCIONA!!!!! :D (to feliz)

programa
{
	funcao inicio()
	{
		inteiro ano_mercurio_segundos = 365*0.2408467
		real ano_mercurio = 0.2408467
		real ano_venus = 0.61519726
		real ano_marte = 1.8808158
		real ano_jupiter = 11.862615
		real ano_urano = 84.016846
		real ano_netuno = 164.79132
		
		inteiro idade
		cadeia planeta
		
		escreva("a) Essa idade em Mercúrio é de, aproximadamente, ", 977000000/ano_mercurio_segundos/24/60/60, " anos.")
		
		escreva("\n", "\n", "Qual sua idade (em anos)? ")
		leia(idade)
		escreva("Digite um planeta: ")
		leia(planeta)

		se (planeta=="Mercúrio")
		{
			escreva("\n", "b) Sua idade em Mercúrio é de ", idade/ano_mercurio, " anos.")
		}
		se (planeta=="mercurio")
		{
			escreva("\n", "b) Sua idade em Mercúrio é de ", idade/ano_mercurio, " anos.")
		}
		se (planeta=="Mercurio")
		{
			escreva("\n", "b) Sua idade em Mercúrio é de ", idade/ano_mercurio, " anos.")
		}

		se (planeta=="Vênus")
		{
			escreva("\n", "b) Sua idade em Vênus é de ", idade/ano_venus, " anos.")
		}
		se (planeta=="venus")
		{
			escreva("\n", "b) Sua idade em Vênus é de ", idade/ano_venus, " anos.")
		}
		se (planeta=="Venus")
		{
			escreva("\n", "b) Sua idade em Vênus é de ", idade/ano_venus, " anos.")
		}

		se (planeta=="Marte")
		{
			escreva("\n", "b) Sua idade em Marte é de ", idade/ano_marte, " anos.")
		}
		se (planeta=="marte")
		{
			escreva("\n", "b) Sua idade em Marte é de ", idade/ano_marte, " anos.")
		}

		se (planeta=="Júpiter")
		{
			escreva("\n", "b) Sua idade em Júpiter é de ", idade/ano_jupiter, " anos.")
		}
		se (planeta=="jupiter")
		{
			escreva("\n", "b) Sua idade em Júpiter é de ", idade/ano_jupiter, " anos.")
		}
		se (planeta=="Jupiter")
		{
			escreva("\n", "b) Sua idade em Júpiter é de ", idade/ano_jupiter, " anos.")
		}

		se (planeta=="Urano")
		{
			escreva("\n", "b) Sua idade em Urano é de ", idade/ano_urano, " anos.")
		}
		se (planeta=="urano")
		{
			escreva("\n", "b) Sua idade em Urano é de ", idade/ano_urano, " anos.")
		}

		se (planeta=="Netuno")
		{
			escreva("\n", "b) Sua idade em Netuno é de ", idade/ano_netuno, " anos.")
		}
		se (planeta=="netuno")
		{
			escreva("\n", "b) Sua idade em Netuno é de ", idade/ano_netuno, " anos.")
		}

		escreva("\n")
	}
}
