public class AlarmClass implements schedulable{
    public void execute(schedulableContext sc){
        Employee__c obj = new Employee__c();
        obj.ename__c = 'Shahrukh';
        obj.salary__c = 1000000;
        obj.deptno__c = '20';
        obj.job__c = 'Manager';
        insert obj;
    }
}