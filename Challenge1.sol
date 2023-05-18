// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract adminx{
    address public admin = msg.sender;

    modifier adminonly{
        require(admin==msg.sender,"Admins Only allowed!");
    _;
    }

    function test1() public view adminonly returns(uint){
        return 37;
    }

    function test2() public view adminonly returns(string memory){
        return "Test2!!";
    }
}
