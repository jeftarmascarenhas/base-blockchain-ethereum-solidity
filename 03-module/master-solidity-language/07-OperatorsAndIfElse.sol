// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/// https://docs.soliditylang.org/en/v0.8.17/types.html#operators

contract OperatorsAndIfElse {
    /**
      a += é equivalente a = a + e
      -=, *=, /=, %=, |=, &=, ^=, <<=

      Multiplication, division and modulo 
      *, /, %
      Exponentiation **

      Operadores de atribuição
      =, |=, ^=, &=, <<=, >>=, +=, -=, *=, /=, %=

      Prefix increment and decrement
      ++, --
      Unary operations
      delete
    */

    bool public rest = 10 % 2 == 0;
    uint256 public count;

    function increment() external {
        count++;
    }

    function decrement() external {
        count--;
    }

    function foo(uint256 x) external pure returns (uint256) {
        if (x < 10) {
            return 1;
        } else if (x < 15) {
            return 2;
        } else {
            return 3;
        }
    }

    function ternary(uint256 x) external pure returns (uint256) {
        return x < 5 ? 1 : 2;
    }

    function ternary2(bool b) external pure returns (uint256) {
        return 240 + (b ? 1 : 2);
    }
}
