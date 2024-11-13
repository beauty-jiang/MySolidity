 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 构造函数：只能合约部署的时候调用一次，一般用作初始化一些变量
contract Constructor {

    address public owner;
    uint public x;

    constructor(uint _x){
        owner = msg.sender;
        x=_x;
    }
}