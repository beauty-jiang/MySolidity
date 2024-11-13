 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
contract VakueTypes {
    // 类型和值
    bool public b = true; //布尔值
    uint public u = 123; //无符号正整数
    int public i = -123;
    int public minInt = type(int).min; //有符号整数的最小值
    int public maxInt = type(int).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddc4; //地址类型 16进制数字
    bytes32 public b32 = 0x89c58ced8a9078bdef2bb60f22e58eeff7dbfed6c2dff3e7c508b629295926fa; //bytes 最大32位
}