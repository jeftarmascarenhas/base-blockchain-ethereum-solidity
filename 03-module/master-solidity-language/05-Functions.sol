// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
  Funções são métodos pelos quais se podem interagir ou criar
  funcionalidades para os contratos
*/

// Visibilidade de funções

/* 
External: As funções externas fazem parte da interface do contrato,
o que significa que podem ser chamadas de outros contratos e por meio de transações.
Uma função externa f não pode ser chamada internamente
*/

/* 
Public: As funções públicas fazem parte da interface do contrato e
podem ser chamadas internamente ou por meio de chamadas de mensagens.
*/

/* 
Internal: As funções internas só podem ser acessadas a partir do contrato atual 
ou dos contratos derivados dele. Eles não podem ser acessados ​​externamente. 
Como não são expostos ao exterior por meio da ABI do contrato, podem receber parâmetros 
de tipos internos como mapeamentos ou referências de armazenamento.
*/

/* 
Private: As funções privadas são como as internas, mas não são visíveis em contratos derivados.
*/

/*
Funções Private ou External apenas impede que outros contratos leiam ou modificam as informação,
mas ainda será visível para todos no blockchain.
*/

/* Anatomia de uma função:

function (<Tipos de Paramêtros>) {(visibilidade) internal| external | public}
[pure | view | payable] returns(<Tipos de retornos>) {
    Corpo da função.
}
*/

contract HelperFuctions {
    // string public saudacao = unicode"Olá sou uma variável 🦄";

    function somaPublic(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }

    function subExternal(uint256 x, uint256 y) external pure returns (uint256) {
        return x - y;
    }

    function fnInternal() internal pure {
        uint256 x = 50;
    }

    function multPrivate(uint256 x, uint256 y) private pure returns (uint256) {
        //subExternal(1,2); // Não é visível no contrato, no caso não pode ser acessada
        return x * y;
    }
}

contract ContractA {
    HelperFuctions helperFn = new HelperFuctions();

    function somefunctionA() public view {
        helperFn.somaPublic(2, 2);
        helperFn.subExternal(1, 2);
        // helperFn.num2Internal(); // Não é visível
        // helperFn.multPrivate(3,2); // Não é visível
    }
}

// class ContractB extends Functions {}

contract ContractB is HelperFuctions {
    function somefunctionA() public pure {
        somaPublic(2, 2);
        // subExternal(2, 1); // Não é visível pq é um contrato derivado
        fnInternal();
        // multPrivate(1,2); // Não é visível pq é um contrato derivado
    }
}
