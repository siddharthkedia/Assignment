trigger trigger4 on Course__c (before update, before insert, before delete) {
	List<Course__c> obj = new List<Course__c>();
	
	If(Trigger.isInsert == true || trigger.isUpdate == true){
		obj = trigger.new;
		 for(course__c er : obj){
			if(er.fees__c < 500){
				er.fees__c.addError('sorry fee cannot be less than ₹500!');
			}
		}
	}
	Else {
		If(Trigger.isDelete == True){
			Obj = Trigger.old;
			for(course__c er : obj){
				if(er.fees__c > 5000){
					er.fees__c.addError('sorry cannot delete when fee>5000!');
				}
			}
		}
	}
}