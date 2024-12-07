 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 小猪存钱罐：可以通过任何人的地址像合约发送以太坊主币，只有拥有者才可以取出主币，取出后自毁

contract PiggyBank {
    event Deposit(uint amount);
    event Withdraw(uint amount);

    address public owner = msg.sender;
    // 收款方法，属于回退函数
    receive() external payable{
        emit Deposit(msg.value);
    }
    function withdraw() external{
        require(msg.sender == owner,"not");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}