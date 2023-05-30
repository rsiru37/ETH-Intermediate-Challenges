// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract uno{ // Deploy this First
    uint public a;
    address public add;


    function addi(uint x) public {
        a=a+x;
    }
}


contract duo{// This is the Proxy Contract that looks for the Function addi inside the uno Contract
    uint public a;
    address public add;

    function addi(address _contract, uint x) public  payable {
      (bool success, bytes memory data) = _contract.delegatecall(abi.encodeWithSignature("addi(uint256)",x));
    }    
}
