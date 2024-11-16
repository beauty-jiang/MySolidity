 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

contract Array {
    // 动态数组：长度是可以变化的
    uint[] public nums = [1,2,3,4];

    // 定长数组：固定长度
    uint[2] public numsFixed = [2,1]; //[2,1] 是初始值  

    function examples() external {
        nums.push(4); // [1,2,3,4,4]
        uint x = nums[1]; //2
        nums[2] = 777; // [1,2,777,4,4]
        delete nums[1]; // [1,0,777,4,4] delete不能减少数组的长度，只可以把元素恢复到默认值
        nums.pop();// [1,0,777,4] 弹出方法可以改变数组的长度
        uint len = nums.length;

        // 在内存中创建一个数组
        uint[] memory a = new uint[](5); //只能根据索引去修改他得值，改变长度的方法都不能用
    }

    // 数组的返回
    function returnArray() external view returns (uint[] memory){
        return nums;
    }

    // 数组的删除 - 通过移动位置
    // 规则：删除第x个，从第x开始 x+1的元素 赋值给x，再把末尾元素pop弹出
    // [1,2,3] - remove(1) - [1,3,3] - [1,3]
    // [1,2,3,4,5,6] - remove(2) - [1,2,4,5,6,6] - [1,2,4,5,6]
    // [1] - remove(0) - [1] []
    // 优点：数组保持原有顺序；缺点：数组长浪费gas
    uint[] public arr = [1,2,3]
    function remove(uint _index) public{
        require(_index < arr.length,'no!');
        for (uint i = _index; i < arr.length-1; i++) {
            arr[i] = arr[i+1]
        }
        arr.pop()
    }


    // 数组的删除 - 通过替换
    // 规则：数组的最后一个元素替换要删除的元素，再把最后一个pop
    // [1,2,3,4,5,6] - remove(2) - [1,2,6,4,5,6] - [1,2,6,4,5]
    // 优点：节省gas；缺点：数组顺序乱了
    function removeReplace(uint _index) public{
        arr[_index] = arr[arr.length-1]
        arr.pop()
    }

    
    // 测试
    function text() external{
        arr = [1,2,3,4,5];
        remove(2);
        assert(arr[0] === 1);
        // ...
    }
}