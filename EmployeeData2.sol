pragma solidity >= 0.5.0;

contract EmployeeData{

    address public owner;
    struct EmployeeDB{
        uint employeeID;
        string employeeName;
        string employeeDesignation;
    }
    
    event notification(
        uint employeeID,
        string employeeName,
        string employeeDesignation
        );
    mapping(uint => EmployeeDB) public employeeMapping;
    
    constructor() public{
        owner = msg.sender;
    }
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function setEmployeeDetails(uint _employeeID, string memory _employeeName, string memory _employeeDesignation) public onlyOwner{
        EmployeeDB storage employee = employeeMapping[_employeeID];
        employee.employeeID = _employeeID;
        employee.employeeName = _employeeName;
        employee.employeeDesignation = _employeeDesignation;
        emit notification(_employeeID, _employeeName, _employeeDesignation);
    }

    function getEmployeeDetails(uint _employeeID) public view returns(uint, string memory, string memory){
        return(employeeMapping[_employeeID].employeeID, employeeMapping[_employeeID].employeeName, employeeMapping[_employeeID].employeeDesignation);
    }

}
