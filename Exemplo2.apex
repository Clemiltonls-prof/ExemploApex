/*
	Método: maiorAlturaMasculino
	@param: List<String> atletas, List<String> sexo, List<Decimal> alturas
	return: String
	Resumo: Retorna o nome do Atleta do sexo masculino com maior altura
*/
List<String> nomes = new List<String>{'Rivando','Clemilton','Taty','Vitória'};
List<String> sexos = new List<String>{'m','m','f','f'};
List<Decimal> alturasAtletas = new List<Decimal>{1.69,1.82,2.0,1.69};     
String maiorAlturaMasculino(List<String> atletas, List<String> sexo, List<Decimal> alturas){
    String maisAlto;
    for(Integer i = 0; i < atletas.size(); i++){
        if(sexo.get(i).equals('m')){
            if(i-1 >= 0){
                if(alturas.get(i) > alturas.get(i-1)){
                    maisAlto = atletas.get(i);
                }
            }else{
                maisAlto = atletas.get(0);
            }
        }
    }
    return maisAlto;
}
System.debug('Maior atleta do sexo masculino: ' + maiorAlturaMasculino(nomes,sexos,alturasAtletas));
