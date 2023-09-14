public class MyCustomMetadata {
	public void getCustomMetadataDetails(){
        mycustommetadata__mdt msd = mycustommetadata__mdt.getInstance('My_metadataset');
        System.debug(msd);

        System.debug('This is my flag value ' + msd);

        if(msd.flag__c==true){
            System.debug('Please execute!');
        }
        else{
            System.debug('Please dont execute!!');
        }
    }
}