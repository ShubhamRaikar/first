public class Merch_Acc {
    
    public void StandardObject() {
        
        List<Account> Acc_List = [Select id, name from Account];
        
        for(Account act : Acc_List)  
        {
            System.debug('Account id ' + act.id + ' Account Name ' + act.Name);
        }
        
        
    }
    
    
    public void CustomObject() {
        
        List<Merchandise__c> merchList = [Select id, name , Merchandise_Description__c from Merchandise__c where Merchandise_Stock__c > 5000];
        
        for(Merchandise__c mer : merchList) 
        {
            System.debug('Merchandise name ' + mer.Name + ' Merchandise Desc ' + mer.Merchandise_Description__c );
        }
    }

}