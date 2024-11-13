// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 三种常用的报错控制方法，都可以gas退还和状态变量回滚的功能，8.0以后可以自定义报错内容 会节约gas。
// require,revert assert

contract Errors {
// 一、报错控制
    function testRequire(uint _i) external pure {
        require(_i <= 0, "i > 10 了哦"); //条件_i <=0满足才运行，参数2报错信息
        // code
    }

    function testRevert(uint _i) external pure { //revert 是不能包含表示的
        if(_i > 10){
            revert('i > 10 了哦')
            // code
        };

// 二、assert 测试
        uint public num = 123;
        function testAssert() external view { 
            assert(num == 123);
        }
        function foo() public {
            num += 1; //加1后不满足条件了 23行就报错
        }

// 三、gas退还和状态变量回滚
        function foo2(uint _i) public {
            num += 1;
            require(i < 10); //不小于10时就会回滚和gas退还
        }
    }

// 四、自定义错误
        error myError(address caller,uint i);
        function testCustomError(uint _i) public view{
            if(_i <= 10){
                myError(msg.sender,_i)
            }
            // code
        }
        
}
