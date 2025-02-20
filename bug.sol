```solidity
function withdraw() public {
        uint amount = balances[msg.sender];
        require(amount > 0, "Insufficient balance");
        (bool success, ) = payable(msg.sender).call{value: amount} (""); //bug is here
        require(success, "Transfer failed.");
        balances[msg.sender] -= amount;
    }
```