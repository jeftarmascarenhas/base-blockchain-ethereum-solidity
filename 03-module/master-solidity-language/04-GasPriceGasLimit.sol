// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
- Para efetuar uma transações no Blockchain Ethereum é necessário o pagamento de GAS que é uma taxa
a ser paga quando uma transação é executada.

GAS PRICE: Quantidade de ETH em GWEI que o remetente está disposto a pagar, esse valor depende da sua pressa
em ter a transação confirmada.

GAS LIMIT: 'é' quantidade total que uma transação pode consumir, caso seja fornecido gas em excesso ele será
devolvido


- Os atributos GAS PRICE e GAS LIMIT definem o valor da taxa(GAS).
- A taxa é cobrada em GWAI

Calculo do valor de GAS a ser pago: GAS LIMIT * GAS PRICE 

GWEI é um valor muito pequeno do ETH, mais no Ethereum existe várias formas de devidir o ETH,
como por exemplo: WEI que é a menor forma como dividimos 1 ETH.

É como no Bitcoin que existe o Satoshi a menor divisão de um BTC.

*/

contract GasPriceGasLimit {
    uint256 public num;

    function add(uint256 x) public {
        num = x;
    }
}
