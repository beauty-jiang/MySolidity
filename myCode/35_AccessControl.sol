 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 权限控制

contract AccessControl {
    // 在智能合约中修改了状态变量的值 就要像链外汇报
    // indexed 在链外可以方便查找做出的修改
    event GrantRole( bytes32 indexed _role, address indexed _account);
    //角色 - 账户 - 布尔值
    mapping(bytes32 => mapping(address => bool)) public roles; 

    bytes32 private constant ADMIN = keccak256(abi.encodePacked('ADMIN')); //定义的角色名称采用hash值 而不采用字符串的原因是节约gas。
    bytes32 private constant USER = keccak256(abi.encodePacked('USER')); //定义的角色名称采用hash值 而不采用字符串的原因是节约gas。

    // 给地址升级 内部使用
    function _grantRole(bytes32 _role,address _account) internal {
        // x角色下的x地址拥有了ture权限
        roles[_role][_account] = true;
        emit GrantRole(_role,_account);
    }
    // 给地址升级 外部使用
    function grantRole(bytes32 _role,address _account) external onlyRole(ADMIN) {
         _grantRole(_role,_account);
    }
    // 只有管理员才能有修改权限的函数修改器 供grantRole函数使用
    modifier onlyRole(bytes32 _role){
        require(roles[_role][msg.sender],'error');
        _;
    }
}