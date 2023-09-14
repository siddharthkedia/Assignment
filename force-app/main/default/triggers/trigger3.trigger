trigger trigger3 on Course__c (before delete) {
	List<Course__c> obj = new List<Course__c>();
    obj = trigger.old;
    for(course__c er : obj){
        if(er.fees__c > 5000){
            er.fees__c.addError('sorry cannot delete when fee>5000!');
        }
    }
}