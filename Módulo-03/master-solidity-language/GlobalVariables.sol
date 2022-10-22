// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    // As principais variáveis glabais
    // msg
    address public sender = msg.sender; // endereço de quem está chamando algo no contrato
    uint256 public value = msg.value; // número de wei enviado com a mensagem

    // block
    uint256 public timestamp = block.timestamp; // timestamp do bloco atual como segundos desde a época unix
    uint256 public blockNumber = block.number; // número do bloco atual
    // tx
    address origin = tx.origin; // remetente da transação (cadeia de chamadas completa)
}
