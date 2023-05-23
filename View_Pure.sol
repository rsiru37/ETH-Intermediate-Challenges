// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract Vipur{
    int public a = 5;

    function uno() public pure returns(string memory) {
        return "Testing a Pure Function, That neither Reads/Writes from the Blockchain";
    }

    function duo() public view returns(uint){
        return uint(a)+37; // Explicitly converting this into uint b'coz a is declared as int by default.
    }
}
