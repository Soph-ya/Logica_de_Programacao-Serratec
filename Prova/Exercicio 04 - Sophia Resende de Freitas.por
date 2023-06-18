programa
{
	
	funcao inicio()
	{

//	****Criação de função com retorno

	const inteiro TAM = 5
	inteiro numeros[TAM]
	inteiro numeroSoma[TAM]
	inteiro soma=0

		escreva("Digite ", TAM, " numeros: ")
		
		para (inteiro i=0; i<TAM; i++) {
				leia(numeros[i])
				
				soma += numeros[i]
				
				enquanto (numeros[i]<=0) {
				escreva("Zero nao é um digito válido, favor digitar novamente: ")
				leia(numeros[i])
				
				
				
				}
				

			
		}escreva("\nA soma dos numeros digitados é: ", soma)
		}



		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 41; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */