 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 传统调用方法
// A 调用 B 发送 100个 主币
// B 调用 C 发送 50个  主币
// A  --->  B  --->  C
              //  C的视角里
            //msg.sender = B
            //msg.value = 50
            //修改状态变量 主币和变量保存在C合约中


// 委托调用
// A 调用 B 发送 100个 主币
// B 委托调用 C 
// A  --->  B  --->  C
              //  C的视角里
            //msg.sender = A
            //msg.value = 100
            //区别在于委托调用不能改变状态变量的值
            // 主币和状态变量保存在B合约中