programa
{
	
	funcao inicio()
	{
		const inteiro QTD_NOTAS = 3
		inteiro qtdAlunos
		cadeia nomeAluno, nomeAlunoMaiorNota="", nomeAlunoMenorNota="", nomeAlunoMaiorMedia="", nomeAlunoMenorMedia=""
		real nota, mediaAluno = 0.0, mediaTurma = 0.0, maiorNota = -1.0, menorNota = 11.0, maiorMedia = -1.0, menorMedia = 31.0

		escreva("Informe quantos alunos deseja cadastrar: ")
		leia(qtdAlunos)

		para (inteiro i=0; i<qtdAlunos; i++) {
			escreva("Informe o nome do aluno ", i+1, ": ")
			leia(nomeAluno)

			mediaAluno = 0.0
			para (inteiro j=0; j<QTD_NOTAS; j++) {
				escreva("Informe a nota ", j+1," do aluno ", nomeAluno, ": ")
				leia(nota)

				se (nota > maiorNota) {
					maiorNota = nota
					nomeAlunoMaiorNota = nomeAluno
				}

				se (nota < menorNota) {
					menorNota = nota
					nomeAlunoMenorNota = nomeAluno
				}

				mediaAluno = mediaAluno + nota
				mediaTurma = mediaTurma + nota
			}

			se (mediaAluno > maiorMedia) {
				maiorMedia = mediaAluno
				nomeAlunoMaiorMedia = nomeAluno
			}

			se (mediaAluno < menorMedia) {
				menorMedia = mediaAluno
				nomeAlunoMenorMedia = nomeAluno
			}

			escreva("A media do aluno ", nomeAluno, " foi de: ", mediaAluno/QTD_NOTAS, "\n\n")
		}

		escreva("\nA maior nota é ", maiorNota, " do aluno ", nomeAlunoMaiorNota)
		escreva("\nA menor nota é: ", menorNota, " do aluno ", nomeAlunoMenorNota)
		escreva("\nA maior media é ", maiorMedia/QTD_NOTAS, " do aluno ", nomeAlunoMaiorMedia)
		escreva("\nA menor media é: ", menorMedia/QTD_NOTAS, " do aluno ", nomeAlunoMenorMedia)
		escreva("\nA media da turma é: ", mediaTurma/(qtdAlunos*QTD_NOTAS))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {qtdAlunos, 7, 10, 9}-{QTD_NOTAS, 6, 16, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */