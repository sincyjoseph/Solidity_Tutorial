
pragma solidity ^0.5.2;

contract ConditionalOperation{
    
    uint lower = 10;
    uint upper = 20;
    
    function inBetween(uint testVal) public view returns(bool t){
        if(testVal >= lower && testVal <= upper){
            t = true;
        } else{
            t = false;
        }
    }

}
