// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Bunny is ERC20, ERC20Burnable, Ownable {
    constructor()
        ERC20("Bunny", "BNY")
        Ownable(msg.sender)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 value) public override {
      super._burn(msg.sender, value);
    } 

    function transfer(address to, uint256 amount) public override returns(bool){
        _transfer(msg.sender, to, amount);
        return true;
    }
}
