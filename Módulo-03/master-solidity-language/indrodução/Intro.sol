pragma solidity >=0.5.8 <0.8.17;
/**
 * Os contratos inteligentes são semelhantes às classes em uma linguagem
 * orientada a objetos.
 * Cada contrato pode conter:
 * - Declarações de variáveis de estado
 * - Funções
 * - Modificadores de funções
 * - Eventos
 * - Tipos de estrutur e tipos enumerados
 * - Contratos pode herdar de outros contratos
 */

// SPDX-License-Identifier: MIT

/**
 * SPDX: é um comentário que indica a licença do sofware(contrato)
 * O compilador não valdia a licença, mais inclui ao metadata do bytecode.
 * Se pode especificar a licencia como UNLICENSED(Sem licença)
 */

/**
* Pragmas: é utilizada para versão do compilador, isso habilita certos
* recursos ou verificações do compilador. Você precisa habilitar pragma
* em todos os seus arquivos.

* Version: é obrigatório setar a versão no contrato para que o compilador,
* não use versões futuras que podem adicionar alterações incompatíveis.

* É sempre importante verificar as alterações  as versão que adicionaram alterações
* relevantes para seu contrato não ter erros devido a versão do compilador.

* Ex: pragma solidity ^0.5.2; um contrato com a versão setar para ^0.5.2,
* como no exemplo, não compila em versões anteriores e também não funciona
* a partir da versão 6 devido a condição ^. Você pode utilizar aluguns operadores
* lógicos para setar as versãos como >, < >=, <=.

* Ex de versões:
* - pragma solidity >=0.5.2 <0.9; pode usar uma versão maior ou igual a 0.5.2 e menor que 0.9.0
* - pragma solidity ^0.5.2; não usa uma versão abaixo de 0.5.0 e nem acima de 0.6.0
* - pragma solidity ^0.8.0; não usa versão abaixo de 0.8.0 e nem uma como 0.9.0, o compilador
* poderia usar neste caso de 0.8.0, 0.8.17... mas não 0.9.0.

* As versões mais importante tem alterações x.0.0 e 0.x.0, é sempre importante ler o CHANGE_LOG
* para verificar se a versão a ser utilizada contem alterações importantes.
*/

pragma solidity >=0.5.8 <0.9.0;

/**
 * Imports de outros arquivos:
 * O solidity suporta instruções de importação para ajudar a modularizar seu código que  são
 * semelhantes aos disponíveis em Javascript(do ES6 em diante). No entanto, o Solidity não
 * suporta o conceito de importanção padrão.
 */

contract Intro {
    string name = "Curso";

    function getName() public view returns (string memory) {
        return name;
    }
}
