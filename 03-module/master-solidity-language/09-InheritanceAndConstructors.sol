// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Solidity suporta multiplas heranças incluindo polymorfismo
/** Para o usar o polymorfismo no solidity precisamos declara a função como virtual e usar o override para alterar
o comportamento da função.
*/

// InheritanceAndConstructors

contract Base {
    uint256 public x;

    constructor(uint256 _x) {
        x = _x;
    }
}

// informando o valor de x diretamente na herança
contract ContractA is Base(1) {
    constructor() {}
}

// informando o valor de x usando o modificador
contract ContractB is Base {
    constructor(uint256 y) Base(y * y) {}
}

abstract contract ContractAbstract is Base {}

contract ContractC is ContractAbstract {
    constructor() Base(10 + 20) {}
}

contract Owned {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}
