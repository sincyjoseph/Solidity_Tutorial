// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.0;

contract StudentDetails {
    enum phases {one, two, three}
    
    struct student {
        string name;            //bytes32 can store up to 32 letters (ASCII)
        string projectName;     
        string projectDescription; 
        string projectURL;      //bytes32 can store be used if services like URL shortner is used
        bool subMissionStatus;
        phases projectPhase;
    }
    
    mapping(uint8 => student) private students;
    
    function setStudent (
        uint8 _id,
        //string memmory _name mean the name is dynamic state variable of variable length so choose memmory
        string memory _name,
        string memory _projectName,
        string memory _projectDescription,
        string memory _projectURL,
        bool _subMissionStatus,
        phases _projectPhase ) public {
            
        students[_id].name = _name;
        students[_id].projectName = _projectName;
        students[_id].projectDescription = _projectDescription;
        students[_id].projectURL = _projectURL;
        students[_id].subMissionStatus = _subMissionStatus;
        students[_id].projectPhase = _projectPhase;
        }
        
    function getStudent(uint8 _id) public view returns(
        string memory _name,
        string memory _projectName,
        string memory _projectDescription,
        string memory _projectURL,
        bool _subMissionStatus,
        phases _projectPhase) {
            
        return (
        students[_id].name,
        students[_id].projectName,
        students[_id].projectDescription,
        students[_id].projectURL,
        students[_id].subMissionStatus,
        students[_id].projectPhase);
        }
}
