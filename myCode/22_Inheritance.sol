 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 继承
contract A {
    // virtual 代表是可重写的
    function foo() public pure virtual returns (string memory) {
        return "A1";
    }
    function bar() public pure virtual returns (string memory) {
        return "A2";
    }
    function baz() public pure  returns (string memory) {
        return "baz";
    } 
}

// B合约使用A合约的一部分功能
constant B is A {
    // override 覆盖掉之前合约的函数
    // 在B合约中 foo是自己的，其他两个来自A合约
    function foo() public pure override returns (string memory) {
        return "B";
    } 
}
// 多线继承：原则 要先写基础合约 派生合约写在后面