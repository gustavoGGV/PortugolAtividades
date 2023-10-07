programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tip
	const cadeia alfabeto[26]={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
	const cadeia alfabeto_minusculo[26]={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
	cadeia opcao=" "
	cadeia texto=" "
	inteiro chave=0
	
	funcao inicio()
	{
		escreva("O que você quer fazer?\n1. Criptografar\n2. Descriptografar\n\n(1/2)?: ")
		leia(opcao)
		se(opcao=="1"){
			limpa()
			escreva("Escreva a frase: ")
			leia(texto)
			escreva("\nVocê quer qual chave?: ")
			leia(chave)
			limpa()
			criptografar(texto, chave)
			 	
		} senao se(opcao=="2"){
			limpa()
			escreva("Escreva a frase: ")
			leia(texto)
			escreva("\nQual é a chave?: ")
			leia(chave)
			limpa()
			descriptografar(texto, chave)
		} senao{
			limpa()
			escreva("Opção Inválida! Reinicie o programa.\n")
		}
	}
	
	funcao criptografar(cadeia texto, inteiro chave)
	{
		inteiro posicao
		caracter letra_caracter
		cadeia letra="Y"
		inteiro numero_letras_frases=t.numero_caracteres(texto)
		logico esta_no_alfabeto

		
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i+chave
					posicao=posicao%26
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} senao se(letra==alfabeto_minusculo[i]){
					posicao=i+chave
					posicao=posicao%26
					escreva(alfabeto_minusculo[posicao])
					esta_no_alfabeto=verdadeiro
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

		
		para (inteiro h=0;h<numero_letras_frases;h++){
			esta_no_alfabeto=falso

			letra_caracter=t.obter_caracter(texto, h)
			letra=tip.caracter_para_cadeia(letra_caracter)

			
			para(inteiro i=0;i<26;i++){
				
				se(letra==alfabeto[i]){
					posicao=i-chave

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto[posicao])
					esta_no_alfabeto=verdadeiro
					pare
				} senao se(letra==alfabeto_minusculo[i]){
					posicao=i-chave

					se(posicao<0){
						posicao=posicao+26
					}
					escreva(alfabeto_minusculo[posicao])
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
