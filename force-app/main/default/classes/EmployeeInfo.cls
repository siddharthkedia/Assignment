public class EmployeeInfo {
	@auraEnabled
    public static void insertEmpDetails(String enm, String efnam, String eaddr, String edept, String esal){
        EmployeeInfo__c hemp = new EmployeeInfo__c();
        hemp.name = enm;
        hemp.EmpFname__c = efnam;
        hemp.Emp_Address__c = eaddr;
        hemp.Emp_Dept__c = edept;
        hemp.Emp_salary__c = Integer.valueof(esal);
        insert hemp;
    }
}