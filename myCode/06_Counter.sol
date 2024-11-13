 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;
// 小demo 计数器合约
contract Counter {
   uint public count;
    // 写入方法
   function inc() external{ //外部可视：在合约内部其他函数是不能调用的，只能通过外部读取
         count +=1;
   }

   function dec () external {
        count -=1;
   }
}