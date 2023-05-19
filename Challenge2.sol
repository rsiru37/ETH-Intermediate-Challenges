// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract challenge2{
    uint public a = 10;
    function hi() public pure returns(string memory){
        return "Testing pure, No Interation with blockchain";
    }

    function hlo() public view returns(uint x){
        x=a+10;
    }

    function getpaisa() public payable returns(uint){
    
    }

    function checkbal() public view returns(uint){
        return address(this).balance;
    }
}
