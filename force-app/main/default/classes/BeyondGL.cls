public class BeyondGL implements database.Batchable<employee__c>,database.stateful {
	string name = 'Kanisq';
    // start
    public iterable<employee__c> start(database.BatchableContext bc){
        system.debug('In start method ' + name);
        name = 'Gunoo';
        return [select salary__c from employee__c];
    }
    
    //execute
    public void execute(database.BatchableContext bc, List<employee__c> obj){
        system.debug('In start method ' + name);
        name = 'Ketan';
        for(Employee__C er : obj){
            er.salary__c += 10000;
        }
        update obj;
    }
    //finish
    public void finish(database.BatchableContext bc){
        system.debug('In start method ' + name);
    }
}