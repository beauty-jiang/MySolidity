 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 发送ETH 三种方法
// transfer：带有2300 gas，如果失败就reverts
// send：带有2300 gas，会返回一个bool值标记是否成功
// call：会发送所有剩余的gas，会返回是否成功的bool值还会返回一个data数据。
contract SendEth {

    function sendViaTransfer(address payable _to) external payable{
        _to.transfer(123);
    }
    function senViaSend(address payable _to) external payable {
       bool sent =  _to.send(123);
    //    require(sent,"发送异常");
    }

    function sendViaCall(address payable _to) external payable {
       (bool success,)= _to.call{value:123}("");
    //  require(success,"发送异常");

    }
}