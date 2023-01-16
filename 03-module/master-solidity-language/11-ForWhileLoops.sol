// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhiteLoops {
    function loopFor(uint256[] memory array) external pure returns (uint256) {
        uint256 sum;
        for (uint256 index = 0; index < array.length; index++) {
            sum += array[index];
        }
        return sum;
    }

    function loopWhile(uint256[] memory array) external pure returns (uint256) {
        uint256 sum;
        uint256 index;

        while (index < array.length) {
            sum += array[index];
            index++;
        }
        return sum;
    }

    function loop() external pure returns (uint256 result) {
        for (uint256 index = 0; index < 5; index++) {
            if (index == 3) {
                continue;
            }

            if (index == 4) {
                break;
            }

            result += 1;
        }
    }
}
