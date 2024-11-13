 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 循环
contract ForAndWhileLoops {
    function loops() external pure{
        for (uint256 index = 0; index < 10; index++) {
            if(i == 3){ continue }
        }
    }

    // 在智能合约中要控制循环的数量 太多gas费会多
    function sum(uint n) external pure returns(uint){
        uint s;
        for (uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}