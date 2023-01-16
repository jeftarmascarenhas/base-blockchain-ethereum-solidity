// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mutação de estado
contract ViewAndPure {
    string myVar = "Minha string";

    // As funções podem ser declaradas como view,
    // no caso em que elas prometem não modificar o estado.
    // Nesse primeiro caso a função poder ler um estado como a variável myVar, mais não pode alterar-la
    function getGreeting() public view returns (string memory) {
        // myVar = "Alterando o estado";
        return myVar;
    }

    // constant é uma alias para view, porem foi descontinuado
    function doSomething(uint256 a, uint256 b) public view returns (uint256) {
        return a * (b + 42) + block.timestamp;
    }

    // Funções pode ser pure se elas prometerem não ler e nem alterar o estado do contrato
    function foo(uint256 a, uint256 b) public pure returns (uint256) {
        return a * (b + 42);
    }
}
