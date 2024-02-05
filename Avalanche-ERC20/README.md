## Project: Create and Mint Token
The ERC20-Contract is an ERC20 contract which imports its functionality from the OpenZeppelin industry standard for creating onchain fungible tokens. The contract also imports the ERC20 Burnable and Ownable OpenZeppelin contracts. For adding additional burn functionalities and ownership guards to the contract respectively. Three major functions were demonstrated in this contract. The **mint()**, **burn()** and **transfer()** functions.

#### ERC20-Token Contract-Walkthrough
- Start by deploying the code in the ERC20-Token.sol file in remix.
- The address used for deployments will be set as the contract owner using by the inherited Ownable contract.
- The mint function is only callable by the contract owner due to the onlyOwner modifier set on the function. Use the mint function to mint new tokens to users by specifying the **to** address to receive tokens and the **amount** to define the amount of tokens to be minted.
- The burn function is used to basically destroy tokens by sending them to the zero address in ethereum, and deducting the burned amount from the totalSupply. This function can be called by any address.
- The transfer function can be used to send tokens from one address to another. The function by default sets the function caller as the **from** address which sends tokens to the **to** address. This function can also be called by any address.