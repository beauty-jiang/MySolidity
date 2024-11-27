 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 不可变量
contract lmmutable {
    // 定义一个常量 但常量的值是未知的（合约的用户地址） 
    // 关键词immutable 部署合约的时候一次定义成功 可以节约gas 并且还可以部署合约时候定常量
    
    // 测试1 immutable关键词
    address public immutable owner = msg.sender;

    // 测试第二种定义
    uint public x;
    function foo() external {
        require(msg.sender == owner);
        x +=1;
    }
}