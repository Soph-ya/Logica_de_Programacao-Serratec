programa
{	
		/*	Exercicio 4
			Sophia Resende de Freitas*/
	
	funcao inicio()
	{
			const inteiro TAM = 10
			inteiro numeros[TAM]
			inteiro numerosPar[TAM], par=0
			inteiro numerosImpar[TAM]

			
			para(inteiro i=0; i<TAM; i++) {
				escreva("digite o ", i+1, "º numero ")	
				leia(numeros[i])
				enquanto(numeros[i] == 0){
					escreva("Zero não é um número valido, tente novamente: ")
					leia(numeros[i])
					}
 				se(numeros[i] %2 == 0){
                        numerosPar[i] = numeros[i]
                        
 				} senao {
                        numerosImpar[i] = numeros[i]
                        } 
                      
		
	}escreva("Pares: ")
	
		para (inteiro i=0; i<TAM; i++){
			se (numerosPar[i]!=0) {
				escreva(numerosPar[i],"\t")
			}
		}escreva("\n", "Impares: ")
		
        	para (inteiro i=0; i<TAM; i++){
	          se (numerosImpar[i] != 0) {
	          	escreva(numerosImpar[i],"\t")
	                    }
	}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 836; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */