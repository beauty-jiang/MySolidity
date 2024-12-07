 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 库合约

// 返回最大值的库合约
library Math {
    function max(uint x,uint y) external pure returns (uint){
        return x>=y?x:y;
    }
}

contract Test {
    function testMax(uint x,uint y) external pure returns (uint){
        // 库合约应用
        return Math.max(x,y );
    }
}

// 查找功能的库合约
library ArrayLib {
    function find(uint[] storage arr,uint x)internal view returns(uint){
        for(uint i = 0; i<arr.length;i++){
            if(arr[i] == x){
                return i;
            }
        }
        revert("not found");
    }
}

contract TestArray {
    // 相比eturn ArrayLib.find(arr,2); 更简化的语法
    // 相当于吧ArrayLib.find功能引用进来了，在这个合约里的数组 都具备了查找功能 不能挨个写了
    using ArrayLib for uint[];

    uint[] public arr = [3,2,1];
    function testFind() external view returns (uint i){
    //    return ArrayLib.find(arr,2);
    return arr.find(2);
    }
}