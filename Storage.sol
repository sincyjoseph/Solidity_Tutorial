// SPDX-License-Identifier: GPL-3.0                // Defining source code license

pragma solidity ^0.7.0;

contract Storage1 {
    
    uint256 number;                                 //State variable
    
    
    // function <name> (<parameter types>) {public/private/internal/external} [default/pure/view/payable] [returns(<return types>)]
    
    function store(uint256 num) public{
        number = num;
    }
    
    function retreive() public view returns(uint256){
        return number;
    }
}
