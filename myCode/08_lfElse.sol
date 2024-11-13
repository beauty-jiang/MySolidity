 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 结构控制
contract lfElse {
    function example(uint _x) external pure returns (uint){
        // if(_x < 10){
        //     return 1;
        // }else if (_x < 20) {
        //     return 2;
        // }else{
        //     return 0;
        // }
         return _x < 10 ? 1 : (_x < 20 ? 2 : 0);
    }
}