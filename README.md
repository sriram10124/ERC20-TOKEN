# ERC 20 CONTRACT

This Solidity program is a "ERC20-TOKEN" program that demonstrates use to ERC token functions of the Solidity programming language. In the video the working of functions is shown once deployed.

## Description

The ERC20-TOKEN contract consists of the following components:

- Constructor:

The constructor initializes the owner address. It also sets the owner variable to a specific Ethereum address (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).
- Modifier:

onlyOwner: This modifier restricts access to certain functions to only the contract owner. It verifies whether the caller of the function is the owner before allowing the function to proceed.
- Functions:
  
_mint function : adding of tokens to an account can be done using this mint function. Input address and value to mint. 'Ownable' is used to make sure that owner address is the only one that has access to call the function.

_burn function : removing of tokens from an account can be done using the burn function. Input valuetoremove. Public and can be used in any address used to deploy the contract.

_transfer function : transfer of tokens from an address to another address can be performed using this function. Input current address , adress to recieve and value to transfer.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., avax_error.sol). Copy and paste the following code into the file:

```javascript
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

```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile avax_error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Ratatoullie.sol" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

U SRIRAM

usriram186@gmail.com
