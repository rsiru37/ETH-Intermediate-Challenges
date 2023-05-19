// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract chglobal{
    uint public a=0;
    function courier() public payable returns(bool) {
        return payable(msg.sender).send(10);
    }

    function geteth() public payable returns(uint){
        a=msg.value;
        return msg.value;
    }
}
