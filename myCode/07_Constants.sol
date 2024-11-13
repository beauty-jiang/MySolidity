 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 常量
contract Constants {
   // constant：把普通状态变量变成一个常量可以节省gas费
   // My_Addr:常量书写要求
   address public constant MY_ADDR = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;

   uint public constant MY_UINT = 123;
}