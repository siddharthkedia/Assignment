@isTest
public class Q9 {
    public static testmethod void main() {
        List<employee__c> obj = new List<employee__c>();
        obj = [SELECT ename__c, job__c, salary__c, deptno__c from employee__c where deptno__c like '20' LIMIT 5];
        for (employee__c empr: obj) {
            system.debug(empr);
        }
    }
}