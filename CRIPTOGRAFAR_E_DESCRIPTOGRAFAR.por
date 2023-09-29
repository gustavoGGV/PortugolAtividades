programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tip
	const cadeia alfabeto[26]={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
	
	funcao inicio()
	{
		descriptografar("AAA", 3)	
	}
	
	funcao criptografar(cadeia texto, inteiro chave)
	{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		//para cada uma das letras da frase informada
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			//para recorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i+chave
					posicao=posicao%26
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} 
				
			}
			se(esta_no_alfabeto==falso){
				escreva(letra)
			}
			
			
		}
	}
		funcao descriptografar(cadeia texto, inteiro chave)
		{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		//para cada uma das letras da frase informada
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			//para recorrer todo o alfabeto em busca da posição da letra
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i-chave

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} 
				
			}
			se(esta_no_alfabeto==falso){
				escreva(letra)
			}
			
			
		}
	}
}
