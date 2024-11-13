 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
contract FunctiontIntro {
   function add(uint x,uint y) external pure returns(uint){
        return x + y;
   }

    // external 代表外部函数 只能在外部读取的函数
    // pure 纯函数：代表 这个函数不能够读也不能写状态变量 只能局部变量（完全不对链上有读取操作）
   
   function sub(uint x,uint y) external pure returns(uint){
    return x-y;
   }
}