 // SPDX-License-Identifier: MIT 
pragma solidity ^0.8.7;

// 小练习-待办事件列表
contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo [] public _todos;

    function create (string calldata _t) external {
        _todos.push(Todo({
            text:_t,
            completed:false
        }));
    }
    function updateText(uint _index,string calldata _t) external {
        // 第一种写法：只有一个要更新 推荐这种
        _todos[_index].text = _t;
        // 第二种写法:更新数据多 推荐这种 节约gas
        Todo storage todo = _todos[_index];
        todo.text  = _t;
    }
    function get(uint _index) external view returns (string memory,bool){
        // memory 和 storage 都可以 但后者更节省gas
        // storage中的todo直接从状态变量中读取；返回值的文本需要一次拷贝过程
        // memory：从状态变量拷贝到内存中 在返回的时候经历一次拷贝就行
        Todo memory todo = _todos[_index];
        return (todo.text,todo.completed);
    }
    function toggleCompleted(uint _index) external{
        _todos[_index].completed = !_todos[_index].completed;
    }
}