// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Lottery {
    address public owner;

    address payable[] public players;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "LT: not owner");
        _;
    }

    receive() external payable {
        require(msg.value == 0.01 ether, "LT: bet value is 0.1 ETH");
        players.push(payable(msg.sender));
    }

    function getPlayers() external view returns (address payable[] memory) {
        return players;
    }

    function randomness() private view returns (uint256 id) {
        id =
            uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) %
            players.length;
    }

    function raffle() external onlyOwner returns (address) {
        require(players.length >= 3, "LT: players not enough");
        uint256 id = randomness();
        address payable winner = players[id];
        require(winner != address(0), "LT: try raffle again");
        withdraw(winner);
        return winner;
    }

    function withdraw(address payable _winner) internal onlyOwner {
        (bool success, ) = payable(_winner).call{value: address(this).balance}(
            ""
        );
        require(success, "LT: width draw failed");
        delete players;
    }
}
