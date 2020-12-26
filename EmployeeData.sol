pragma solidity >= 0.5.0;

contract EmployeeData{
    uint employeeID;
    string employeeName;
    string designation;

    function setEmployeeDetails(uint _employeeID, string memory _employeeName, string memory _designation) public{
        employeeID = _employeeID;
        employeeName = _employeeName;
        designation = _designation;
    }

    function getEmployeeDetails(uint employeeID) public view returns(uint, string memory, string memory){
        return(employeeID, employeeName, designation);
    }

}
