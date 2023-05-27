programa
{
	funcao inicio()
	{
		real tamanho_arquivo
		real velocidade_link
		real tempo
		
		escreva("Insira o tamanho do arquivo (em MB): ")
		leia(tamanho_arquivo)
		escreva("Insira a velocidade do link de internet (em Mbps): ") 
		//Assumo que seja megabytes, não sei fazer conversão de megabits para MB.
		leia(velocidade_link)

		tempo = tamanho_arquivo/velocidade_link
		tempo /= 60
		escreva("O tempo de download será de, aproximadamente, ", tempo, " minutos.")
	}
}
