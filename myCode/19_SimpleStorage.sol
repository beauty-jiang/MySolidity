 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 简单存储
contract SimpleStorage {
    string public text;

// external 外部可见代表合约内部的函数不能调用它
// calldata 和 memory 都可以 但前者更节省gas一点
    function set(string calldata _t) external{
        text = _t;
    }

    function get() external view returns (string memory) {
        return text;
    }
}