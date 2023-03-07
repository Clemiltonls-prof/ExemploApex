Map<String,List<Decimal>> alunos = new Map<String,List<Decimal>>{
    // Assumindo que sempre será nesta ordem:
    // Nome => List<Decimal>{rendaPessoal,rendaFamiliar,despesasAlimentacao,outrasDepesas}
    'Thyago Sales' => new List<Decimal>{3200,2000,1500,150},
    'Adriana' => new List<Decimal>{4500,5000,1800,500},
    'Átila' => new List<Decimal>{2000,3200,1000,1000},
    'Taty' => new List<Decimal>{3000,1600,1500,100},
    'Klebya' => new List<Decimal>{2500,5000,1300,2000}
};
Decimal percentual(Decimal total, Decimal restricao){
    return ((restricao*100)/total).setScale(2);
}
// Guarda quantidade de alunos que gastam mais que 200 com outras despesas.
Integer alunosGastandoDemais = 0;
// Guarda a quantidade de alunos que ganham mais que a renda Familiar.
Integer alunosGanhandoBem = 0; 
for(String nome : alunos.keySet()){
    if(alunos.get(nome).get(3) > 200){
        alunosGastandoDemais++;
    }
    if(alunos.get(nome).get(0) > alunos.get(nome).get(1)){
        alunosGanhandoBem++;
    }
    exibirDados(nome,alunos.get(nome).get(0),alunos.get(nome).get(1),alunos.get(nome).get(2),alunos.get(nome).get(3));
}
System.debug('Percentual de alunos gastando mais que 200 com outras despesas: ' + 
             percentual(alunos.keySet().size(),alunosGastandoDemais));
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
