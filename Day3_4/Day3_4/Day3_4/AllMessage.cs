namespace Day3_4
{
    public class AllMessage
    {
        public string strEmpDL = "select FirstName from Employees";
        public string strEmp = "select EmployeeID, CONCAT(FirstName, ' ', LastName) as Name, Address, Salary from employees";
        public string strDL = "select FirstName, Address, Salary from employees where FirstName= '";
    }
}