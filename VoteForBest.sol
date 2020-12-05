// A voting smart contract that enable one to vote ldf or udf or bjp and give the count of that vote.
// It also enable different choices so that the the public can choose the best from the list.

pragma solidity ^0.4.25;

contract VoteForBest {
    
    uint256 public no_of_vote_ldf;
    uint256 public no_of_vote_udf;
    uint256 public no_of_vote_bjp;
    
   function vote_Ldf() public {
        no_of_vote_ldf++;
    }
    
    function vote_Udf() public {
        no_of_vote_udf++;
    }
    
    function vote_Bjp() public {
        no_of_vote_bjp++;
    } 
    

    function choice_vote(string _choice) public {
        require(keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("LDF")) 
        || keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("UDF")) 
        || keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("BJP")));
        
        if(keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("LDF"))) {
            //ldf++;
            no_of_vote_ldf = no_of_vote_ldf + 1;
        } else if(keccak256(abi.encodePacked(_choice)) == keccak256(abi.encodePacked("UDF"))) {
            no_of_vote_udf = no_of_vote_udf + 1;
        } else {
            no_of_vote_bjp = no_of_vote_bjp + 1;
        }
    }
    
}
