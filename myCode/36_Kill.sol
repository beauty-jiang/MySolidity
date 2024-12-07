 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 自毁合约selfdestruct
// 功能：删除合约、强制发送主币到一个地址(因为自毁了 就要把剩余的钱发走)

contract Kill {
    // 合约储存主币
    constructor() payable{}
    
    //自毁合约 
    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    // 测试方法
    function testCall() external pure returns(uint){
        return 123;
    }
}