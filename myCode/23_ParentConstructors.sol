 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 输入函数运行顺序、向构造函数输入函数参数的方法
contract S {
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

constant T {
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

// 第一种传参方法
constant U is S('s'),T('t') {

}
// 第二种传参方法：定义一个新的构造函数
constant V is S,T{
    constructor(string memory _name,string memory _text) S(_name) T(_text){

    }
}

// 传参方法混合使用

constant VV is S('s'),T{
    constructor(string memory _text) T(_text){}
}