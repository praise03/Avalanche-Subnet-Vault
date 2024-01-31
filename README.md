#  Defi Empire, A Simple DeFI Kingdom Clone
---
**For the Metacrafters, Advanced Avalanche course on Subnets*

The program is a simple vault and ERC20 contract deployed on an avalanche fuji chain subnet. The purpose of this program is to demonsrate how vaults work in DeFi.

### Description
---
The program is a simple group of contracts written in solidity and deployed on an Avalanche Subnet. Firstly, an ERC20 token contract is deployed which is meant to serve as the accepted deposit token on the Vault. It tracks the total supply of deposited tokens and issues shares to represent ownership of the deposited assets. These shares can be withdrawn at will to recover deposited tokens.

## Executing the Program


**Prerequisites**
- Remix IDE online 
- Avalanche Fuji Chain Subnet

**Deployment**
- Deploy the ERC20 Token Contract using the injected provider in REMIX with the subnet as the active chain.
- Deploy the Vault Contract using the address from ERC20 contract deployed above as the constructor parameter.

**Interaction**
- Mint Tokens from the ERC20 Contract to your wallet address.
- Deposit Tokens: Call the deposit(uint _amount) function on the deployed contract, specifying the amount of ERC20 tokens you want to deposit. This will mint shares representing your ownership in the vault's pooled assets.
- Check Your Balance: Use the balanceOf(address _owner) function to view your current share balance in the vault.
- Withdraw Tokens: Call the withdraw(uint _shares) function, specifying the number of shares you want to burn. This will proportionally return the corresponding amount of ERC20 tokens from the vault to your chosen address.- 

**Author:** Disappointed_Rorie @praise03

**License**
This project is licensed under the MIT License
