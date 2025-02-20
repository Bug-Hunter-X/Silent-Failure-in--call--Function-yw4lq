```solidity
function withdraw() public {
        uint amount = balances[msg.sender];
        require(amount > 0, "Insufficient balance");
        // Solution: use send or transfer, or handle call appropriately
        bool success = payable(msg.sender).send(amount);
        require(success, "Transfer failed.");
        balances[msg.sender] -= amount;
    }
```