// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ChooseNFT is ERC721 {
    constructor() ERC721("ChooseNFT", "ChooseNFT") {
        _safeMint(msg.sender, 1);
    }
}

contract AuctionNFT {
    uint nftId = 2;
    uint public highestBid;
    uint public timeEnded;
    address payable public bidderWinner;
    address payable immutable owner;

    ERC721 immutable nftAddress;

    constructor(address _nftAddress, address payable _owner) {
        nftAddress = ERC721(_nftAddress);
        owner = _owner;
        timeEnded = block.timestamp + 1 days;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "only owner");
        _;
    }

    modifier onlyFinished() {
        require(block.timestamp > timeEnded, "cannot finish auction");
        _;
    }

    function bid() external payable {
        require(msg.value >= 0.1 ether, "value not enough");
        require(msg.value > highestBid, "value is smaller than highest Bid");

        (bool success, ) = bidderWinner.call{value: highestBid}("");
        require(success, "transfer failed");

        highestBid = msg.value;
        bidderWinner = payable(msg.sender);
    }

    function finish(
        address _to,
        uint _tokenId
    ) external onlyOwner onlyFinished {
        nftAddress.safeTransferFrom(msg.sender, _to, _tokenId);
    }

    function withdraw() external payable onlyOwner onlyFinished {
        (bool success, ) = owner.call{value: address(this).balance}("");
        require(success, "transfer failed");
    }
}
