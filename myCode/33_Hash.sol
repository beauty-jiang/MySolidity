 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// hash算法
// 特性：输入值相同输出值也相同；不管输入值有多大输出值是定长的并且hash算法不可逆向运算
// 用于获取一个特定id / 签名的运算


contract HashFunc {
    function hash(string memory text,uint num,address addr) external pure returns (bytes32){
        // hash算法内部函数
        // 先进行打包 encodePacked
        return keccak256(abi.encodePacked(text,num,addr));

        // encodePacked和encode打包的区别：前者会进行压缩并且不会补0可能会出现漏洞
    }
}
