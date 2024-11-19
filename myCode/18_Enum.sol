 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 枚举:一个变量拥有多种状态
contract Enum {
    // 声名一个叫状态的枚举 
    enum Status {
        Pending,
        Rejected
    }
    // 定义到状态变量中
    Status public s;
    // 把枚举写到结构体内部
    struct Order {
        address buyer;
        Status ss;
    }
    // 用结构体定义数组
    Order[] public orders; 
}