// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MappingExample {
    // sintaxe mapping(KeyType => ValueType)
    // O KeyType pode ser qualquer tipo, como bytes, string, number entre outros
    // Exceto mapping, struct, array não são permitidos
    // Já o ValueType pode ser qualquer tipo inclusive, mapping, struct, arrays...
    /**
      Você pode pensar no mapping como um hash table
      { "Jeftar": "11-02-1986", "João": "11-02-1990" }
      { 1: false, 2: true, 3: true, 4: true }
    */

    mapping(address => uint256) public balances;

    function update(uint256 newBalance) external {
        balances[msg.sender] = newBalance;
    }
}

contract MappingUser {
    function foo() external returns (uint256) {
        MappingExample m = new MappingExample();
        m.update(100);
        return m.balances(address(this));
    }
}
