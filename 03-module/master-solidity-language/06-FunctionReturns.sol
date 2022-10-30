// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionReturs {
    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            string memory
        )
    {
        return (2, true, "Hi");
    }

    function returnNamed() public pure returns (uint256 a, bool b) {
        return (2, true);
    }

    function returnAssigned() public pure returns (uint256 a, bool b) {
        a = 10;
        b = true;
    }

    function desctruting() public pure {
        (uint256 a, bool b, string memory s) = returnMany();
        (, , string memory s2) = returnMany();
        (, bool b2, ) = returnMany();
    }
}
