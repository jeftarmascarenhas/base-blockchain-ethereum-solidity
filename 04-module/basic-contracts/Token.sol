// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Token {
    // Um "endereço" é comparável a um endereço de e-mail - é usado para comparar uma conta no Ethereum.
    // Endereços podem representar uma conta de contrato inteligente ou uma conta externa (usuário).
    // Saiba mais: https://solidity.readthedocs.io/en/v0.5.10/types.html#address
    address public owner;

    // Um `mapping` é essencialmente uma estrutura de dados de tabela de hash.
    // Este `mapeamento` atribui um inteiro não assinado (o saldo do token) a um endereço (o titular do token).
    // Saiba mais: https://solidity.readthedocs.io/en/v0.5.10/types.html#mapping-types
    mapping (address => uint) public balances;

    // Eventos permitem registro de atividade no blockchain.
    // Clientes Ethereum podem ouvir eventos para reagir às alterações do estado do contrato.
    // Saiba mais: https://solidity.readthedocs.io/en/v0.5.10/contracts. tml#eventos
    event Transfer(address from, address to, uint amount);

    // Inicializa os dados do contrato definindo o `owner`
    // para o endereço do criador do contrato.
    constructor() public {
    // Todos os contratos inteligentes dependem de transações externas para acionar suas funções.
        // `msg` é uma variável global que inclui dados relevantes sobre a transação em questão,
    // como o endereço do remetente e o valor ETH incluído na transação.
        // Saiba mais: https://solidity.readthedocs.io/en/v0.5.10/units-and-global-variables.html#block-and-transaction-properties
        owner = msg.sender;
    }

    // Cria uma quantidade de novos tokens e os envia para um endereço.
    function mint(address receiver, uint amount) public {
        // `require` é uma estrutura de controle usada para aplicar certas condições.
        // Se um comando `require` for avaliado como `false`, uma exceção é acionada,
        // que reverte todas as alterações feitas ao estado durante a chamada atual.
        // Saiba mais: https://solidity.readthedocs.io/en/v0.5.10/control-structures. tml#error-handling-assert-require-revert-and-exceptions

        // Somente o proprietário do contrato pode chamar esta função
        require(msg. remetente == dono, "Você não é o dono. );

        // Reforça uma quantidade máxima de tokens
        require(amount < 1e60, "Emissão máxima excedida");

        // Aumenta o saldo de `receiver` em `amount`
        saldos[receiver] += amount;
    }

    // Envia uma quantidade de tokens existentes de qualquer chamada para um endereço.
    function transfer(address receiver, uint amount) public {
        // O remetente deve ter tokens suficientes para enviar
        require(amount <= balances[msg.sender], "Insufficient balance.");

        // Ajusta os saldos do token dos dois endereços
        balances[msg.sender] -= quantidade;
        balances[receiver] += quantidade;

        // Emite um evendo definido anteriormente
        emite Transfer(msg.sender, receiver, amount);
    }
}
