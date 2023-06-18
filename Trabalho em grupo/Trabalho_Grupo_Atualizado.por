programa
{
		/* Criadores:
		André Lomba Garcia Roza
		Douglas de Freitas Magalhães
		Gabriel Rezende Maia
		Júlia Soares Moraes
		Sophia Resende de Freitas
		Victor Ouverney Asth*/
		
	inclua biblioteca Util --> ut

	const inteiro LIMITE = 20
	const inteiro V_CODIGOS[4] = {1, 2, 3, 4}
	const cadeia V_PRODUTOS[4] = {"Bermuda ", "Calça   ", "Camisa  ", "Camiseta"}

	inteiro total = 0, posicao = 0
	inteiro vCodigosRegistrados[LIMITE]
	cadeia vProdutosRegistrados[LIMITE]
	cadeia vCores[LIMITE]
	cadeia vTamanhos[LIMITE]
	inteiro vQuantidade[LIMITE]

	 
	funcao inicio()
	{

		menu()
	}

	funcao menu()
	{
		inteiro opcao
		logico continua = verdadeiro
		caracter resposta

		faca {
			cabecalho()
			ut.aguarde(1200)
			limpa()
			escreva("\nEscolha uma opção: \n")
			opcoes()
			leia(opcao)
			linhaSimples()
			escolha(opcao) 
			{
				caso 1:{
					se(total==LIMITE) {
						limpa()
						escreva("Estoque cheio!")
						pare
					} senao
						cadastrar() pare
				}
				caso 2: verEstoque() pare
				caso 3: limpa() escreva("Obrigado por utilizar o sistema!\n") continua = falso pare
				caso contrario: 
				{
					limpa()
					escreva("Opção inválida! Tente novamente.")
					ut.aguarde(1500)
					limpa()
				}
			}
			se(opcao>0 e opcao<3) {
				escreva("\n\nDeseja realizar outra tarefa no sistema? (s/n) ")
				leia(resposta)
				limpa()
				se(resposta=='n') {
					escreva("Obrigado por utilizar o sistema!\n")
					continua = falso
				}
			}
		} enquanto(continua)
	}

	funcao cabecalho()
	{
		linhaDupla()
		escreva("\n        SISTEMA DE CADASTRO DE PRODUTOS\n")
		linhaDupla()
	}

	funcao linhaDupla()
	{
		escreva("\n")
		para(inteiro i=0; i<=50; i++) {
			escreva("=")
		}
		escreva("\n")
	}

	funcao linhaSimples()
	{
		escreva("\n")
		
		para(inteiro i=0; i<=70; i++) {
			escreva("-")
		}
		
		escreva("\n")
	}

	funcao cadastrar()
	{
		inteiro codigo
		logico continua = falso
		caracter opcao

		faca {
			para(inteiro i=posicao; i<LIMITE; i++) {
				limpa()
				linhaSimples()
				escreva("Informe o código do produto: ")
				escreva("\n\n1 - Bermuda\n2 - Calça\n3 - Camisa\n4 - Camiseta\n\n")
				leia(codigo)
				linhaSimples()
				
				para(inteiro j=0; j<4; j++) {
					se(codigo == V_CODIGOS[j]) {
						continua = verdadeiro
						escreva("\nVocê escolheu: ", V_PRODUTOS[j])
						ut.aguarde(1000)
						limpa()
						vCodigosRegistrados[i] = V_CODIGOS[j]
						vProdutosRegistrados[i] = V_PRODUTOS[j]
						posicao = i
						cor()
						tamanho()
						quantidade()
						escreva("Você cadastrou: ", vQuantidade[i], "x ", vProdutosRegistrados[i], " (cod.", vCodigosRegistrados[i], ") - ", vCores[i], " - ", vTamanhos[i], ".")
					} 
					
				}
				
				se(continua==falso) {
					escreva("\nOpção inválida! Tente novamente.")
					ut.aguarde(1500)
					pare
				}
				
				se(total==LIMITE) {
					escreva("\n\nEstoque cheio!")
					ut.aguarde(1500)
					linhaSimples()
					pare
				} senao se(continua == verdadeiro) {
					posicao = i+1
					escreva("\n\nDeseja cadastrar outro produto? (s/n) ")
					leia(opcao)
					se(opcao == 's' ou opcao == 'S'){
						continua = falso
					} senao pare
				} 
			}
		} enquanto(continua==falso)
		
		verEstoque()
		
	}

	funcao verEstoque()
	{	
		inteiro aux_codigo, aux_quantidade
		cadeia aux_prod, aux_cor, aux_tam
		
		escreva("\n\n")
		escreva("Quantidade\tCódigo\t\tProduto\t\tCor\t\tTamanho")
		linhaSimples()
		para (inteiro i=0; i<LIMITE; i++) {
			para (inteiro j=i+1; j<LIMITE; j++) {
				se(vCodigosRegistrados[i] > vCodigosRegistrados[j])
				{
					aux_codigo = vCodigosRegistrados[i]
					vCodigosRegistrados[i] = vCodigosRegistrados[j]
					vCodigosRegistrados[j] = aux_codigo

					aux_prod = vProdutosRegistrados[i]
					vProdutosRegistrados[i] = vProdutosRegistrados[j]
					vProdutosRegistrados[j] = aux_prod

					aux_cor = vCores[i]
					vCores[i] = vCores[j]
					vCores[j] = aux_cor

					aux_quantidade = vQuantidade[i]
					vQuantidade[i] = vQuantidade[j]
					vQuantidade[j] = aux_quantidade

					aux_tam = vTamanhos[i]
					vTamanhos[i] = vTamanhos[j]
					vTamanhos[j] = aux_tam
				}
			}
			
		}

		para (inteiro i=0; i<LIMITE; i++) {
			se(vQuantidade[i] !=0)
			{
				escreva("\n", vQuantidade[i], "\t\t", vCodigosRegistrados[i], "\t\t", vProdutosRegistrados[i], "\t", vCores[i], "\t", vTamanhos[i])
				linhaSimples()
			}
		}
		
		escreva("Total de itens: ", total, "\t\t\t\t  Espaço no estoque: ", LIMITE - total)
		escreva("\n")

	}

	funcao cor()
	{
		inteiro opcao
		
		
		faca {
			escreva("\nInforme o número da cor do produto:\n")
			escreva("\n1- Vermelho\n2- Preto\n3- Amarelo\n4- Azul\n5- Branco\n6- Verde\n")
			escreva("Opção: ")
			leia(opcao)
			limpa()
			escolha(opcao)
			{
				caso 1: vCores[posicao] = "Vermelho" pare
				caso 2: vCores[posicao] = "Preto   " pare
				caso 3: vCores[posicao] = "Amarelo " pare
				caso 4: vCores[posicao] = "Azul    " pare
				caso 5: vCores[posicao] = "Branco  " pare
				caso 6: vCores[posicao] = "Verde   " pare
				caso contrario: 
				{
					escreva("Cor inválida! Tente novamente.")
					ut.aguarde(1500)
					limpa()
				}
			} 
		} enquanto(opcao<1 ou opcao>6)
	}

	funcao tamanho()
	{
		inteiro opcao
		
		
		faca {
			escreva("\nInforme o número do tamanho do produto:\n")
			escreva("\n1- PP\n2- P\n3- M\n4- G\n5- GG\n")
			escreva("Opção: ")
			leia(opcao)
			limpa()
			escolha(opcao)
			{
				caso 1: vTamanhos[posicao] = "PP" pare
				caso 2: vTamanhos[posicao] = "P" pare
				caso 3: vTamanhos[posicao] = "M" pare
				caso 4: vTamanhos[posicao] = "G" pare
				caso 5: vTamanhos[posicao] = "GG" pare
				caso contrario: 
				{
					escreva("Insira um tamanho válido!")
					ut.aguarde(1500)
					limpa()
				} 
			}
		} enquanto(opcao<1 ou opcao>5)
	}
	
	funcao quantidade()
	{
		inteiro qtd
		logico continua = verdadeiro
		caracter opcao

		se(total<LIMITE)
		{
			faca {
				escreva("Você está cadastrando o produto: ", vProdutosRegistrados[posicao], " - ", vCores[posicao], " - ", vTamanhos[posicao], ".")
				escreva("\n\nInsira a quantidade (espaço no estoque para ", LIMITE-total, " peças): ")
				leia(qtd)
				limpa()
				se (qtd > (LIMITE-total))
				{
					escreva("Quantidade acima do limite de estoque.\n")
					ut.aguarde(1500)
					limpa()
					
				} senao {
					total += qtd
					vQuantidade[posicao] = qtd
					continua = falso
				}
			} enquanto(continua)
		} senao
			escreva("O estoque atingiu seu limite.")
	}
	
	funcao opcoes()
	{
		escreva("\n\t1 - Cadastrar produto\n")
		escreva("\t2 - Consultar estoque\n")
		escreva("\t3 - Sair do cadastro\n")
		escreva("\nOpção: ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 184; 
 * @DOBRAMENTO-CODIGO = [24, 30, 76, 83, 92, 103, 161, 210, 239, 267, 296];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vCodigosRegistrados, 18, 9, 19}-{vProdutosRegistrados, 19, 8, 20}-{vCores, 20, 8, 6}-{vTamanhos, 21, 8, 9}-{vQuantidade, 22, 9, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */