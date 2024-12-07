 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// IERC20接口
// 一个合约满足IERC20的要求.
// 合约的函数完全实现了IERC20合约的函数.合约里面的函数具体如何实现可以不考虑.
// IERC20：
// 1.当前账户总量
// 2.当前账户余额
// 3.把当前账户余额发送到另一地址中
// 4.批准:把当前账户余额
// 具体合约逻辑:
// 1.ERC20继承IERC20合约
// 2.
// 定义totalsupply总量
// 定义批准映射
// 发送方法:
// 发送者减掉一定数量
// 接收者增加一定数量
// 3.transferFrom:
// 是从发送者减掉余额.接收者收到余额.
// 而调用者无关,它只是一个调用的作用

// https://www.bilibili.com/video/BV1634y147HP?spm_id_from=333.788.player.switch&vd_source=4481d74fb433bd9c21309726189eccbc