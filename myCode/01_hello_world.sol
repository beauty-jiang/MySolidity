 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7; //版本号^代表8.7以上的版本都能用（8版本之内并且7以上的； 9版本就不行哈）
contract HelloWorld {
    string public myString = 'hello world'; // public：可视范围是公开。编译后会自带一个只读get函数

}