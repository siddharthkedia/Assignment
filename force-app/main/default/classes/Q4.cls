@istest
public class Q4 {
    public static testmethod void main(){
        List<employee__c> obj = new List<employee__c>();
            obj= [select id from employee__c all rows];
        undelete obj;
    }
}