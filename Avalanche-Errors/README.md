## Functions and Errors
The contract SimpleToken contract is intended to demonstrate how the revert(), assert() and require() functions work in solidity. These functions were introduced in solidity version **0.4.10** and they help to improve code readability and error handling. The introduction of the **REVERT** opcode also helps to save gas on function reverts by refunding the remaining gas to the function caller.

##### Simple-Token.sol Code Walkthrough
The SimpleTokens contract is a basic soldity contract that simulates the ERC721 token standard by allowing users mint tokens, then transfer or burn the minted tokens. The contract was written with some modifiers and guard functions to demonstrate the use of require(), assert() and require().

Contract Breakdown

- The contract has some state variable to keep track of data such as number of tokens minted, token balance of addresses and owner of tokens with given IDs.
- The **_mint(to)** internal function mints a token to the specified *to* address.
- The external **mint()** function mints a token to the function caller, but performs certain checks at the start and end of the function call. Firstly, it checks if the user holds tokens already using ***require(balanceOf[msg.sender] == 0, "You Own NFTs already");*** which reverts if the specified condition is not met. Then it updates the balanceOf and Owner mappings accordingly and increases the token counter. Then as an extra layer of security it uses the ***assert(balanceOf[msg.sender] == 1 && counter == (counterBefore + 1));*** guard to check if the users token balance was increased and the token counter was incremented during the call. This is done using an assert function which reverts if all the conditions specified in it is met.
- The **transfer(id, to)** function is used by a token holder to transfer their token to any given address. The function is guarded using a modifier ***zeroAddress*** which checks if the address the token is being sent to is not the zero address(0x0000000000000000000000000000000000000000) to prevent tokens from being lost forever; Then it uses an if statement to check if the function caller is the owner of the specified token id to be transferred and throws an error using **revert()** if the condition fails.

Author: Disappointed_Rorie **@praise03**

License This project is licensed under the MIT License