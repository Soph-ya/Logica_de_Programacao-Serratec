programa
{
	
		/* 	Exercicio 3
			Sophia Resende de Freitas*/	

	inclua biblioteca Util --> ut
	
	funcao inicio()
	{
		const inteiro tam = 10
		inteiro soma = 0
		inteiro numeros[tam]
		inteiro numeros2[tam]
		inteiro multiplicacao = 0

		para(inteiro i=0; i<tam; i++) {
			escreva("informe o ", i+1, "º valor: ")
			leia(numeros[i])
						
		} 
		limpa()
		
		
		para(inteiro j=0; j<tam; j++) {
			multiplicacao = numeros[j]*5
			numeros2[j] = multiplicacao
			escreva( numeros[j], " * 5 = ", multiplicacao, "\n")
			
		} 
		ut.aguarde(1000)
		limpa()
		escreva("números digitados:\n")
		para(inteiro i=0; i<tam; i++) {
			escreva(numeros[i], "\n")
			
			}

			escreva("\n Números digitados multiplicados por 5 \n")
		para(inteiro i=0; i<tam; i++) {
			escreva(numeros2[i], "\n")
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 584; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */