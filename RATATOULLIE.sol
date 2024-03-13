// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Ratatouille is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Ratatouille", "RT")
        Ownable(initialOwner)
      
    {}

    function mint(address to, uint256 valtomint) public onlyOwner {
        _mint(to, valtomint);
    }

    function burn(uint256 valtoremove) public  {
        _burn(msg.sender,valtoremove);
    }   
    function transfer(uint256 valtotransfer, address transf_addr) public {
        _transfer(msg.sender, transf_addr, valtotransfer);
    }    
}
