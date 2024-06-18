// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    address private owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint _amount) public {
        require(msg.sender == owner, "Only the owner can deposit funds");
        balance += _amount;
    }

    function withdraw(uint _amount) public {
        assert(balance >= _amount);
        balance -= _amount;
    }

    function transfer(address _recipient, uint _amount) public {
        require(_recipient!= address(0), "Invalid recipient address");
        require(balance >= _amount, "Insufficient balance");
        balance -= _amount;
        (bool success, ) = _recipient.call{value: _amount}("");
        if (!success) {
            revert("Transfer failed");
        }
    }
}