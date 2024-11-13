 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 函数返回值
contract FunctionOutputs {
    function returnMany() public pure returns(uint,bool){//公开函数 内部外包都可以调用
        return(1,true);
    } 
    // 返回值加上名字
    function named() public pure returns (uint x,bool b){
        return(1,true);
    }
    // 隐式返回
    function assigned() public pure returns(uint x,bool y){
        x=1;
        b=true;
    }

// 如何接收返回值？
    function destructingAssigments() public pure{
        (uint x,bool b) = returnMany();
        // 假如只用一个呢？
        (,bool b) = returnMany();
    }
}