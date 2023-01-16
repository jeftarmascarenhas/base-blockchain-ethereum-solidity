// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateAndLocalVariables {
    // global
    uint256 public i;
    uint256 public balance;
    bool public b;
    address public myContractAddress;

    function foo() external {
        // local só é visível no escopo({}) da função
        uint256 x = 123;
        bool f = false;

        x += 423;
        f = true;

        i = 123;
        b = true;

        myContractAddress = address(this);
        balance = address(this).balance;
    }
}
