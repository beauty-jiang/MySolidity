 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// Owanable合约
contract Owanable {
    address public owner;

    constructor(uint _x){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,'调用者不是owner地址中记录的');
        _;
    }

    function setOwner(address _newOnwer)external onlyOwner{
        require(_newOnwer !== address(0),'新地址不能是0地址');
        owner = _newOnwer
    }

    function only0wnerCanCallThisFunc() external onlyOwner{
        // code
    }
     function anyOneCanCall() external{
        // code
     }
}