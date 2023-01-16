// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Coordinates {
    uint256 lat;
    uint256 log;
}

enum Roles {
    Admin,
    User
}

address constant UNISWAP_TOKEN = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

abstract contract Typing {}

interface ITyping {}

contract TheContract {
    string public name = "I'm a string";
}
