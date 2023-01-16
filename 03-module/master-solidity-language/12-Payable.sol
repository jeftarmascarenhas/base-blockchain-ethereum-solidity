// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractPayable {
    // declarando um address como payable você habilitada o envio de ETH
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    // Declarando uma funçÃo como payable é habilitada para receber ETH ou um token
    // O valor mínimo pode ser zero, então ao usar uma função para receber ETH
    // Deve se validar se valor recebido é o correto;
    function deposit() external payable {}

    // Por padrão uma função não é payable, nesse caso a função não pode receber ETH ou token
    function depositNoPayable() external {}

    // Estamos acessando o valor de ETH ou Token armazenado neste contrato
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
