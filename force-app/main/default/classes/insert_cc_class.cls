public with sharing class insert_cc_class {
    public String empdeptno{get; set;}
    public String empname{get; set;}
    public Decimal empsalary{get; set;}
    public String empjob{get; set;}
    public PageReference insert_record(){
    Employee__c obj = new Employee__c();
    obj.ename__c = Empname;
    obj.salary__c = empsalary;
    obj.deptno__c = empdeptno;
    obj.job__c = empjob;
    insert obj;
    return null;
    }
//    Pagereference pr = new Pagereference()
}