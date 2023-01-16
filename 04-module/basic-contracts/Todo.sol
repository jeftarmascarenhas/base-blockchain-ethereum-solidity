// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Todo {
    TodoItem[] todos;

    struct TodoItem {
        uint256 id;
        string title;
        bool completed;
    }

    uint256 ids;

    function add(string memory title) external {
        todos.push(TodoItem(ids, title, false));
        ids++;
    }

    function getByIndex(uint256 index) external view returns (TodoItem memory) {
        return todos[index];
    }

    function removeByIndex(uint256 index) external returns (uint256) {
        delete todos[index];
        return index;
    }

    function completeToggle(uint256 index) external returns (uint256) {
        TodoItem storage item = todos[index];
        item.completed = !item.completed;
        return index;
    }

    function getAll() external view returns (TodoItem[] memory) {
        return todos;
    }
}
