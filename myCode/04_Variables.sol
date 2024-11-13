 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;


// 状态变量:把一个数据到了区块链上，只要不写修改的方法会永远的保存在链上。
contract StateVariables {
    uint public myUint = 123; //状态变量

    function foo() external {
        uint notStateVariables = 456; //非状态变量 调用函数的时候产生
    }
}


// 局部变量:不会写入区块链上
contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function foo() external {
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;
// 注意：x和f就是局部变量在函数内部 不会写入链。i和b和myAddress状态变量会写入链
        i = 123;
        b = true;
        myAddress = address(1);
    }
}


// 全局变量:不会写入区块链上
contract GlobalVariables {
// view和pure类似都是只读方法；但view会读取一些变量的值（状态变量或全局变量）；pure只能读局部变量
    function GlobalVars() external view returns (address,uint,uint) {
        address sender =  msg.sender; //指的是调用这个账户的地址是什么（有可能是人或者是合约）
        uint timestamp =  block.timestamp; //指的是时间戳(如果是写入方法指的是出块时间并不是真实时间)
        uint blockNum = block.number; //指的是当前区块编号
        return (sender,timestamp,blockNum);
    }
}