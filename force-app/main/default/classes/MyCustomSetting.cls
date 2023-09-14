public class MyCustomSetting {
    public void getCustomSettingDetails(){
        mySetting__c ms = mySetting__c.getInstance('mydataset');
        System.debug(ms);
        
        system.debug('Flag value= ' + ms.Flag__c);
        
        if(ms.flag__c==true){
            system.debug('please execute..');
        }
        else{
            system.debug('please dont execute . .');
        }
    }
}