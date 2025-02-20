# Silent Failure in Solidity's `call` Function

This repository demonstrates a common bug in Solidity smart contracts involving the use of the `call` function for sending Ether. The `call` function can fail silently, leading to loss of funds if not handled properly.

## The Bug
The problem lies in how the `call` function handles errors. If the recipient's fallback function throws an exception, the `call` function will return `false`, but the transaction will not revert. This can lead to a situation where Ether is sent, but the recipient's fallback function fails to process it correctly.

## The Solution
Instead of the low-level `call`, use the safer `send` or `transfer` functions for sending Ether.  If greater control is required, utilize `call` in conjunction with checking the return value and reverting the transaction upon failure.