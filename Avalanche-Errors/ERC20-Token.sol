//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract SimpleTokens {

    // counter for number of tokens minted
    uint8 counter;
    mapping(address => uint8) public balanceOf;
    mapping(uint8 => address) public owner;

    // modifier that check if *to* address is zero address
    modifier zeroAddress(address to) {
        if(to == address(0)){
            revert("Transfer To Zero Address Not Allowed");
        }
        _;
    }

    //@notice: Mints tokens to addresses and updates states
    function _mint(address to) internal {
        //inctrement counter
        ++counter;
        owner[counter] = to;
        balanceOf[to] = 1;
    }

    function mint() public {
        //reverts if user holds NFTs already
        require(balanceOf[msg.sender] == 0, "You Own a token already");
        uint8 counterBefore = counter;
        _mint(msg.sender);
        //checks if user token balance and token counter has incremented
        assert(balanceOf[msg.sender] == 1 && counter == (counterBefore + 1));
    }

    //@notice: transfers token to specified address
    function transfer(uint8 id, address to) zeroAddress(to) public {
        if(msg.sender != owner[id]) revert();
        owner[id] = to;
        balanceOf[msg.sender] -= 1;
        balanceOf[to] += 1;
    }
}