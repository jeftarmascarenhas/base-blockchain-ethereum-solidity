// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VendingMachine {
    address owner;
    // Declarar variáveis de estado do endereço público do proprietário do contrato;
    mapping(address => uint256) public cupcakeBalances;

    // Quando o contrato 'VendingMachine' é implantado:
    // 1. defina o endereço de implantação como proprietário do contrato
    // 2. defina o saldo de cupcake do contrato inteligente para 100
    constructor() {
        owner = msg.sender;
        cupcakeBalances[address(this)] = 100;
    }

    // Permite que o proprietário aumente o saldo de cupcake no contrato inteligente
    function refill(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can refill.");
        cupcakeBalances[address(this)] += amount;
    }

    // Permite que qualquer pessoa adquira cupcakes
    function purchase(uint256 amount) public payable {
        require(
            msg.value >= amount * 1 ether,
            "You must pay at least 1 ETH per cupcake"
        );
        require(
            cupcakeBalances[address(this)] >= amount,
            "Not enough cupcakes in stock to complete this purchase"
        );
        cupcakeBalances[address(this)] -= amount;
        cupcakeBalances[msg.sender] += amount;
    }
}
