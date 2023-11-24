public class CustomMetaDataDemo {
    
    public void getCustomMetaDataValue() {
        
        MyCustomMetaData__mdt cmd = MyCustomMetaData__mdt.getInstance('Upadte_Trigger_Status');
        System.debug('value of Custom Meta Data = ' + cmd);
        
        
        if(cmd.MyMetaData__c == false) {
            System.debug('True');
        }
        else {
            System.debug('False');
        }
    }

}