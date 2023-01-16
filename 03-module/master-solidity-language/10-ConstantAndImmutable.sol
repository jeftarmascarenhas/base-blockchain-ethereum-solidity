// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/** Constant e Immutable
- São variáveis que não podem ser modificadas depois após o contrato ser deployado(Construido)
- Esses dois tipos comparadas com variáveis regulares tem um custo de gas muito menor.
- Constant deve ser inicializada e não poder ser alterada
- Immutable não precisam ser incializada, pode adicionar o valor no constructor.
- Immutable se inicializada não pode ter um novo valor atribuito depois. 
*/

contract ConstantAndImmutable {
    string constant TEXT = "JEFF";
    uint256 immutable maxBalance;
    uint256 immutable decimals;
    address immutable owner = msg.sender;

    constructor() {
        maxBalance = 1000;
        decimals = 18;
    }

    function setDecimals(uint256 _decimals) external {
        // not work, can be asigned on constructor
        // decimals = _decimals;
    }
}
