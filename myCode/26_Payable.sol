 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 支付ETH
contract Payable {
    // 标记payable关键词 函数就可以接受以太坊主币的传入。 
    // address public payable owner();
    function deposit() external payable{}

    function getBalace() external view returns (uint){
        return address(this).balance;
    }
}