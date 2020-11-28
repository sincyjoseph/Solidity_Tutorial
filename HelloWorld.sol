// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.0;

contract HelloWorld {
    // for comment - ctrl + /
    //string public message = "Hello World!!!!....";
    //If we declare public along with type of a state variable it will automatically 
    //generate a getfunction of that state variable
    
    //(string memmory) means it is a dynamically sized state variable
    
    string message = "Hello World!!!!....";
    
    function getMessage() public view returns(string memory){
        return message;
    }
    
}
