programa
{

		/*1- Crie um programa que faça uma operação matemática entre dois números.
	Essas operações são: subtração, soma, divisão, multiplicação
	Avaliação:
	Considere que os números devem retornar duas casas decimais.
	O programa deve perguntar se o usuário deseja efetuar outra operação e permitir essa opção
	Deve proteger divisão por zero
	Deve proteger a entrada do usuário para que não ocorra erro caso seja informado um cxaracter que não seja número
	Deve imprimir os dados de entrada do usuário e mostrar*/
	real num1
	real num2
	real subtracao, soma, divisao, multiplicacao
		
	funcao inicio()
	{
		escreva("Olá, selecione uma opção:\n1-Subtracao\n2-soma\n3-divisao\n4-multiplicacao\n")
		menu()
	}

	funcao menu() {

			inteiro opcao

			leia(opcao)

			enquanto(opcao < 1 ou opcao > 4){
				escreva("opcao invalida, tente novamente: ")
				leia(opcao)}
				
			escolha(opcao) {
						caso 1: 			
							subtrair()
							pare
						caso 2: 
							somar()
							pare
						caso 3: 
							dividir()
							pare
						caso 4: 
							multiplicar()
							pare
			}

		
			
				
	}

	funcao subtrair() {

							
		limpa()
		escreva("Digite os numeros a serem subtraídos: ")
		leia(num1)
		leia(num2)
		subtracao = num1 - num2
		escreva(num1," - ", num2, " = ", subtracao)
		}

	funcao somar() {
		limpa()
							
		escreva("Digite os numeros a serem somados: ")
		leia(num1)
		leia(num2)
		soma = num1 + num2
		escreva(num1," + ", num2, " = ", soma)	
		}

	funcao dividir() {
		limpa()
		escreva("Digite o numero a ser dividido e em seguida o dividendo: ")
		leia(num1)
		leia(num2)
		enquanto(num2 == 0) {
			escreva("número nao pode ser divido por zero, digite um numero válido")
			leia(num2)
			} 
		divisao = num1 / num2
		escreva(num1," / ", num2, " = ", divisao)
		}

	funcao multiplicar() {
		limpa()
		escreva("Digite o numero a ser multiplicaso e em seguida o multiplicador: ")
		leia(num1)
		leia(num2)
		multiplicacao = num1 * num2
		escreva(num1," * ", num2, " = ", multiplicacao)
		}
	
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 928; 
 * @DOBRAMENTO-CODIGO = [51, 62, 72];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */