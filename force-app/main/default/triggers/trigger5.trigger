trigger trigger5 on Course__c (before update, before insert, before delete) {
    List<Course__c> obj = new List<Course__c>();
    
    If(Trigger.isInsert == true || trigger.isUpdate == true){
        obj = trigger.new;
         for(course__c er : obj){
            Datetime dt = DateTime.newInstance(Date.today(), Time.newInstance(0, 0, 0, 0));
            String dayOfWeek=dt.format('EEEE');
            if(dayOfWeek == 'Tuesday'){
                er.fees__c.addError('Access not allowed!');
            }
        }
    }
    Else {
        If(Trigger.isDelete == True){
            Obj = Trigger.old;
            for(course__c er : obj){
                Datetime dt = DateTime.newInstance(Date.today(), Time.newInstance(0, 0, 0, 0));
                String dayOfWeek=dt.format('EEEE');
                if(dayOfWeek == 'Tuesday'){
                    er.fees__c.addError('Access not allowed!');
                }
            }
        }
    }
}