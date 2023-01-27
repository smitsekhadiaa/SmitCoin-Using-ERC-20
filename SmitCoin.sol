// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SmitCoin is ERC20 {
    constructor(string  memory _name, string memory _symbol) 
    ERC20(_name, _symbol){
        // get tokens for ourself
        // mint function in erc20 creates tokens and assigns them to account 
        // msg.sender is the person deplpoying the contract
        // 10**18 means 10 to the powrer of 18
        // to generate 1000 tokens we need to  multiply 1000 with 10 to power of 18

        // you cannot use float values in solidity as ether is used as wei.
        // and one wei is 10 raise to 18 ethers so , to get 1000 ether we multiply by 10^18
        _mint(msg.sender,1000*(10**18));

    }
}