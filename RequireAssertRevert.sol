// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address private owner;
    uint public highestBid;
    address public highestBidder;
    bool public auctionEnded;

    constructor() {
        owner = msg.sender;
        highestBid = 0;
        auctionEnded = false;
    }

    function bid(uint _amount) public {
        require(!auctionEnded, "Auction has already ended");
        require(msg.sender != owner, "Owner cannot bid");
        require(_amount > highestBid, "Bid must be higher than the current highest bid");

        highestBid = _amount;
        highestBidder = msg.sender;
    }

    function endAuction() public {
        require(msg.sender == owner, "Only the owner can end the auction");
        require(!auctionEnded, "Auction has already ended");

        auctionEnded = true;
    }

    function getHighestBid() public view returns (uint) {
        return highestBid;
    }

    function getHighestBidder() public view returns (address) {
        return highestBidder;
    }
}
