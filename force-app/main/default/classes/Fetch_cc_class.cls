public with sharing class Fetch_cc_class {

    public PageReference Cancel() {
        return null;
    }


    public String Empjob { get; set; }

    public String Empdeptno { get; set; }

    public Decimal Empsalary { get; set; }

    public String EmpName { get; set; }

    public String EmpID { get; set; }
     public PageReference fetch_record() {
        Employee__c obj = [select name, ename__c, salary__c, job__c, deptno__c from employee__c where name like :EmpID];
        
        Empname= obj.ename__c ;
        empsalary= obj.salary__c ;
        empdeptno = obj.deptno__c  ;
        empjob= obj.job__c ;
        return null;
    }

}