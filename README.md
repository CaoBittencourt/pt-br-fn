# pt-br-fn: Pohrtugeis Brazilèiru Fonétxicu (Português Brasileiro Fonético)

Este projeto é uma reforma ortográfica fonética da língua portuguesa-brasileira, de modo que seja escrita como é dita.

## Resumo
Embora comparativamente a outros idiomas (e.g. Inglês, Alemão, Francês, etc) o Português seja muito mais foneticamente consistente, ainda deixa a desejar e encontra-se, nos dias de hoje, algo antiquado e incoerente. Uma miríade de regras fazem-se necessárias para compensar a falta de lógica nos mecanismos internos da linguagem; alguns artefatos arcáicos e convenções destituídas de sentido tornam a língua confusa de aprender, especialmente para estrangeiros; e recursos linguísticos valiosos são subutilizados. Aqui pretende-se solucionar todos esses problemas, conquanto mantendo inalterada a norma culta e todos os demais aspectos do Português Brasileiro (i.e. não trata-se de modernizar a língua, mas de fazê-la ainda mais consistente).

## Dialetos
Obviamente, falando-se em uma reforma ortográfica de caráter *fonético*, surge a questão de *que* fonética é adotada. Em um país como o Brasil, com considerável diversidade de sotaques, de fato, poderia-se ainda questionar até mesmo a viabilidade deste projeto. No entanto, é evidente, que
- quase todos os dialetos nacionais podem ser agrupados;
- novos mecanismos linguísticos no Português Brasileiro Fonético tornam os sotaques mais agrupáveis do que seriam de outro modo.

Com isso, contempla-se aqui os seguintes dialetos brasileiros, que não podem ser mais aglutinados do que já estão:
|Sigla|Dialeto|Abrangência|
|-----|-------|-----------|
|br-no|Nordestino|Região Nordeste e adjacentes|
|br-ca|Carioca|Rio de Janeiro e adjacentes|
|br-br|Oficial|Todo o restante do Brasil|

Outros dialetos podem ser adicionados, se for impossível conciliá-los com algum desses três dialetos principais. Mas deve-se fazê-lo com cuidado, para evitar desperdiçar esforço e fragmentar a língua portuguesa. 

## Estrutura do Repositório
Este repositório está organizado com a seguinte estrutura:

|Diretório|Conteúdo|
|---------|--------|
|`/examples`|Textos exemplificando o Português Brasileiro Fonético|
|`/rules`|Um sumário das regras, princípios, e demais características do Português Brasileiro Fonético
|`/resources`|Referências úteis sobre fonética e gramática|
|`/src/env`|Código para configurar este ambiente de desenvolvimento|
|`/src/mod`|Código para transcrição e comparação linguística|
|`/src/db`|Uma base de dados relacional com toda a informação deste repositório|
|`/tasks`|Listas de tarefas|

Além disso, na raiz do repositório, junto a este arquivo, constam a licença e o código de conduta do projeto.