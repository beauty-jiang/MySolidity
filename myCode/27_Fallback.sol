 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 回退函数功能
// 功能1: 调用的函数在智能合约中不存在的时候
// 功能2: 在合约中直接向以太坊发送主币的时候
contract Fallback {
    // 写法一应对功能1
    // fallback() external {}

    // 写法二应对功能2
    // receive() external payable();

    /*
                    fallback和receive的区别?
                    当以太坊主币发送到合约的时候
                                |
                    判断msg.data是否为空
                            /  \
                            yes    no
                            /       \
        receive()函数是否存在？     fallback()调用
                 /   \
                yes   no  
                /      \    
        receive()      fallback()                     
*/


    event Log(string func,address sender,uint value,bytes data);
    
    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}

