// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract proj1{
    uint public a;
    uint public c=5;
    address public owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function testRequire(uint b) public {
        c+=5;
        require(a==b, "A and B are unequal");
    }

    function testRevert(uint x) public {
        a=a+1;
        if(x>37){
            revert("Too High!, Try with a Lower Value");
        }
    }

    function testOwner() public view {
        assert(owner==msg.sender);
    }
}
