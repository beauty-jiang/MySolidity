 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// new语句部署合约
contract Account {
    address  public bank;
    address public owner;

    constructor(address _owner) payable {
        bank = msg.sender;
        owner = _owner;
    }
}

// 如果部署的合约不在一个文件中也可以进行import导入进来
contract AccountFactory {
    Account[] public accountArr;
    function createAccount(address _owner) external {
    //  Account account =  new Account(_owner);
    // 如何传币给Account
     Account account =  new Account{value:111}(_owner);
     accountArr.push(account);
    }
}