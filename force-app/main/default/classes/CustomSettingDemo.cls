public class CustomSettingDemo {
    public void CustomSettingExample() {
        MySetting__c mcs = MySetting__c.getInstance('MyDataSet');
        
        System.debug('Value of My Custom Setting = ' + mcs);
        
        if(mcs.IsActive__c == true) {
            System.debug('Please call my trigger');
           
        }
        else {
            System.debug('Sorry, I Cannot');
        }
    }

}