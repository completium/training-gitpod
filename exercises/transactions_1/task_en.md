# Transactions.1

Write a Smart Contract that has a collect entry point, that allows its owner to withdraw an amount of tez from the balance of the contract.

The owner has to wait at least 2 minutes between each withdrawal.

The owner should not withdraw, each time, more than a maximum amount, that we set in the storage during the origination.

Add a deposit entry point that lets anyone deposit some Tez.

# Transactions.2

Change the  deposit entry point so that allows anyone to deposit at least 100 tez. When doing so, the caller may change the withdrawal limit. The caller may not reduce the withdrawal limit below 1 though.

# Transactions.3

Instead of a maximum value that we can withdraw. Make it so that the owner may only withdraw up to a certain percentage of the balance. This percentage should be set in the storage, during the origination of the contract.

The deposit entry point should allow users to change this percentage, but not reduce it below 1%.
