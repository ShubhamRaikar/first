public class BatchInv implements Database.Batchable<sObject> 
{
    
    public Database.QueryLocator start(Database.BatchableContext bc) {
        String q = 'select id, Invoice_Closed_Date__c from Invoice__c';
        
        return Database.getQueryLocator(q);
    }
    
    public void execute(Database.BatchableContext bc, List<Invoice__c> inv) {
        
        for(Invoice__c i : inv) {
            
            i.Invoice_Closed_Date__c = date.today();
            
        }
        update inv;
    }
    
    public void finish(Database.BatchableContext bc) {
        
    }

}