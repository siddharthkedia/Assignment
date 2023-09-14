trigger trigger2 on Course__c (before update) {
	List<Course__c> obj = new List<Course__c>();
    obj = trigger.new;
    for(course__c er : obj){
        if(er.fees__c < 500){
            er.fees__c.addError('sorry fee cannot be less than ₹500!');
        }
    }
}