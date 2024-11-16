 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 映射:https://www.bilibili.com/video/BV1sY4y1p7Wz?spm_id_from=333.788.player.switch&vd_source=4481d74fb433bd9c21309726189eccbc
contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address =>bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances [address(1)]
    }
}