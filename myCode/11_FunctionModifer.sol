 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 一、基础函数修改器：复用代码简化的语法
contract FunctionModifer {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external{
        paused = _paused;
    }
    // 使用修改器之前
    function inc() external {
        require(!paused,"paused");
        count += 1;
    }
    function dec() external {
        require(!paused,"paused");
        count -= 1
    }
    // inc和dec代码很类似 可以使用函数修改器
    modifier whenNotPaused(){
        require(!paused,"paused");
        _; //这行代码意思是使用修改器的函数 其他代码在哪运行
    }
    // 使用修改器之后 dec也同理
        function inc() external whenNotPaused {
        count += 1;
    }


// 二、带参数的修改器
    // 使用修改器之前
    function incBy(uint _x) external whenNotPaused{
        require(_x <100,"x>=100了哦");
        count += _x;
    }
    modifier cap(uint _x){
        require(_x <100,"x>=100了哦");
        _;
    }
    // 使用修改器之后
        function incBy(uint _x) external whenNotPaused cap(_x){
        count += _x;
    }


// 三、三明治修改器写法
    modifier sandwich(){
        // code
        count += 10;
        _;
        // code
        count *=2;
    }
    function foo() external sandwich{
        count += 1;
    }
}