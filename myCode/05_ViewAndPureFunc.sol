 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
// 只读函数 view 和 pure
contract ViewAndPureFuncs {
   uint public num;

   function viewFunc() external view returns(uint){ //只要读了链上的信息必须要用view
        return num;
   }

   function pureFunc() external pure returns(uint){ // 不读链上的信息 只有局部变量
        return 1;
   }
}