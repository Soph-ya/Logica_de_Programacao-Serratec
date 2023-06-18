programa
{
	/*	Exercicio 01
		Sophia Resende de Freitas*/
	funcao inicio()
	{
		
		inteiro soma = 0
		const inteiro TAM = 5
		inteiro numeros[TAM]
		
	

		para(inteiro i=0; i<TAM; i++) {
			escreva("informe o ", i+1, "º valor: ")
			leia(numeros[i])
			soma += numeros[i] 
			
			
		} 	limpa()
			escreva("a soma dos valores digitados é de: ", soma, "\n")
			
			escreva("os numeros digitados foram:\n" )
			para (inteiro i=0; i<TAM; i++) {
				escreva(numeros[i], "\n")
			
	
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */