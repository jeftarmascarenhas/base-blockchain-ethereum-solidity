// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Tipos Primitivos

// - boolean
// - uint
// - int
// - address

/*
Public: As variáveis ​​de estado públicas diferem das internas apenas porque
o compilador gera automaticamente funções getter para elas, o que permite que outros
contratos leiam seus valores. Quando usado dentro do mesmo contrato,
o acesso externo (por exemplo, this.x) invoca o getter enquanto o acesso interno (por exemplo, x)
obtém o valor da variável diretamente do armazenamento. As funções do setter não são geradas,
portanto, outros contratos não podem modificar diretamente seus valores.
*/

/*
Internal: As variáveis ​​de estado interno só podem ser acessadas de dentro do contrato
em que são definidas e em contratos derivados. Eles não podem ser acessados ​​externamente.
Este é o nível de visibilidade padrão para variáveis ​​de estado.
*/

/*
Private: As variáveis ​​de estado privado são como as internas,
mas não são visíveis em contratos derivados.
*/

contract Variables {
    bool public boolean; // valor padrão false

    /* usigned integer são inteiros não negativos
      para calcular qual o valor máximo dos intinteiros a formula é
      uint{tipo} varia de 0 a 2 ** {tipo} | ex: uint8 = 2 ** 8 -1, uint256 = 2 ** 256 -1
    */

    uint8 public uInteiro8 = 255; // valor padrão 0 | 0 a 2 ** 8 - 1
    uint16 public uInteiro16 = 5; // valor padrão 0 | 0 a 2 ** 16 - 1
    uint32 public uInteiro32; // valor padrão 0 | 0 a 2 ** 32 - 1
    uint256 public uInteiro256 = 500; // valor padrão 0 | 0 a 2 ** 256 - 1
    uint256 public uInteiroAlias256; // valor padrão 0 |  0 a 2 ** 256 - 1

    int256 public intNegativo = -456; // valor padrão 0 | int256 -2**255 a 2**255 -1

    uint8 public minUint = type(uint8).min;
    uint8 public maxUint = type(uint8).max;

    // Pode ser o endereço público de uma conta de usuário ou de um contrato
    address public addrUser = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // valor padrão 0x0000000000000000000000000000000000000000;

    // bytes podem ser decodificado no front-end, isso faz com quer menos dados seja armazenado no blockchain
    bytes1 public b1 = "s"; // valor padrão 0x0000000000000000000000000000000000000000000000000000000000000000;
    bytes8 public b8 = "Solidity";
    bytes32 public b32;

    function bytesToString(bytes memory _bytes)
        public
        pure
        returns (string memory)
    {
        return string(_bytes);
    }
}
