 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 可视范围
// private 私有：只在合约内部可见
// internal 内部：合约的内部、被继承的子合约中都可见
// public 公开：可视范围最大，内部被继承的、外部都可见
// external 外部：只在合约外部可见

/*
 __________________
|                  |
| A 函数           |
| private   pri()  |
| internal  int()  |   <-------C1函数调用A
| public    pub()  |    pub()、ext()
| external  ext()  |
|__________________|

 __________________
| B继承了A         |
| B is A           |
| int()            |   <-------C2函数调用B
| pub()            |    pub()、ext()
|__________________|
*/

contract Visibility {

}