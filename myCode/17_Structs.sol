 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 结构体
contract Structs {
    // 定义一个cat的结构体
    struct Cat {
        uint year;
        string color;
        string name;
    }
    // 以cat为类型定义一个cat变量；结构体用大写开头；变量小写开头
    Cat public cat
    // 以cat为类型定义一个cats的数组；
    Cat[] public cats;
    // 以cat为类型定义一个映射；
    mapping(address => Cat[]) public catByOwner;

    function examples () external {
        // 三种写法
            // 一
             Cat memory tianyuan = Cat(5,'黑白花','小花');
            // 二
            Cat memory shizi = Cat(year:3,color:'白',name:'小白');
            // 三
            Cat memory sanhua;
            sanhua.year = '黄黑白';
            sanhua.name = '小美女';
            sanhua.year = 5;
        
        // 把结构体推入到数组中
        cats.push(tianyuan);
        cats.push(shizi);
        cats.push(sanhua);
        
        // 推入和定义一步完成
        cats.push(Car(3,'黑','小黑'))

        // 获取结构体的值
        Cat memory _cat = cars[0]
        _cat.name;

        // 结构体定义在存储中可以修改
        Cat storage _cc = cars[0];
        _cc.year = 20
        // 删除
        delete _cc.name; //也是变成默认值
        delete cats[1]
    }   
}