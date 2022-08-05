// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

// Work Of 
// name: Abdullah Mehboob

contract Todo {
    mapping (string => string[]) public todos;

    function setTodo(string memory _name,string memory _todo) public {
        todos[_name].push(_todo);
    }

    function updateTodo(string memory _name,uint256 _index, string memory _todo) public {
        todos[_name][_index] = _todo;
    }

    function deleteTodo(string memory _name, uint256 _index) public {
        delete todos[_name][_index];
    }
}
