
pragma solidity ^0.5.2;

contract ConditionalOperation{
    
    uint public testVal = 10;
    
    function decrementor() public {
        while(testVal >= 4){
            testVal --;
        }
    }
}
