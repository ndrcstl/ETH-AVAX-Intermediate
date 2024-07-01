**Auction Contract**
=====================

This is a simple auction contract written in Solidity. It allows users to bid on an item, and the owner of the contract can end the auction.

**Features**
------------

* **User Bidding**: Users can bid on an item with a higher amount than the current highest bid
* **Auction End**: The owner of the contract can end the auction
* **Highest Bid Tracking**: The contract keeps track of the highest bid and the highest bidder
* **Owner Restrictions**: The contract ensures that the owner cannot bid on the item
* **Auction End Restrictions**: The contract ensures that the auction can only be ended by the owner

**Functions**
-------------

### `bid(uint _amount)`

* Allows a user to bid on the item with a specified amount
* Requires that the auction has not ended
* Requires that the user is not the owner of the contract
* Requires that the bid amount is higher than the current highest bid
* Updates the highest bid and highest bidder if the bid is successful

### `endAuction()`

* Allows the owner of the contract to end the auction
* Requires that the auction has not already ended
* Sets the `auctionEnded` flag to `true`

### `getHighestBid()`

* Returns the current highest bid

### `getHighestBidder()`

* Returns the current highest bidder

**License**
----------

This contract is licensed under the MIT License.

**Testing**
----------

This contract has been tested using Solidity's built-in `assert` statements to ensure that the contract behaves as expected.

**Deployment**
-------------

To deploy this contract, simply compile and deploy it to your preferred Ethereum network using your favorite development environment.

**Note**
------

This is a simple example contract and should not be used in production without further testing and auditing.
