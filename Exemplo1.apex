List<String> nomes = new List<String>{'Thyago Sales', 'Adriana', 'Átila', 'Taty','Klebya'};
List<Decimal> rendaPessoal = new List<Decimal>{3200,4500,2000,3000,2500};
List<Decimal> rendaFamiliar = new List<Decimal>{2000,5000,3200,1600,5000};
List<Decimal> despesasAlimentacao = new List<Decimal>{1500,1800,1000,1500,1300};
List<Decimal> despesasOutras = new List<Decimal>{150,500,1000,100,2000};
  
Decimal percentual(Decimal total, Decimal restricao){
    return ((restricao*100)/total).setScale(2);
}
// Guarda quantidade de alunos que gastam mais que 200 com outras despesas.
Integer alunosGastandoDemais = 0;
// Guarda a quantidade de alunos que ganham mais que a renda Familiar.
Integer alunosGanhandoBem = 0; 

for(Integer i = 0; i < nomes.size(); i++){
    if(despesasOutras.get(i) > 200){
        alunosGastandoDemais++;
    }
    if(rendaPessoal.get(i) > rendaFamiliar.get(i)){
        alunosGanhandoBem++;
    }
    exibirDados(nomes.get(i),rendaPessoal.get(i),rendaFamiliar.get(i),despesasAlimentacao.get(i),despesasOutras.get(i));
}
System.debug('Percentual de alunos gastando mais que 200 com outras despesas: ' + percentual(nomes.size(),alunosGastandoDemais));
System.debug('Quantidade de alunos ganhando mais que a família: ' + alunosGanhandoBem);
void exibirDados(String aluno, Decimal rP, Decimal rF, Decimal dA, Decimal dOu){
    // Armazena temporariamente os ganhos totais
	Decimal ganhosTotais = 0;
	// Armazena temporariamente os gastos totais
	Decimal gastosTotais = 0;
    System.debug('Nome do aluno: ' + aluno);
    System.debug('Renda Pessoal: ' + rP);
    System.debug('Renda Familiar: ' + rF);
    System.debug('Despesas com Alimentação: ' + dA);
    System.debug('Outras Despesas: ' +dOu);
    ganhosTotais = (rP+rF);
    gastosTotais = (dA+dOu);
    System.debug('Renda Total: ' + ganhosTotais);
    System.debug('Gastos Totais: ' + gastosTotais);
    System.debug('Percentual de Despesas: ' + percentual(ganhosTotais,gastosTotais) + '%');
    System.debug('--------------------------------------------');
}
/*

*/
