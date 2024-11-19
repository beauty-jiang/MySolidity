 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 事件：记录智能合约当前状态的方法，但不会记录在状态变量中。体会现在区块链浏览器上/交易记录中的logs里
// 通过时间可以查询改变过的一些状态
contract Event {
    event Log(string message,uint val);
    event IndexedLog(address indexed sender,uint val);
    // 下面的函数一个写入方法 不能被标记为view或者pure
    function example() external{
        emit Log("aaaamessage", 2);
        emit IndexedLog(msg.sender,789);
    }
}