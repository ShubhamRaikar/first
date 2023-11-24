public class Invoice_Batch implements Database.Batchable<sObject> {
	
    public Database.Querylocator start(Database.BatchableContext bc) {
        String q = 'Select id, Invoice__Closed_Date__c from Invoice__c';
        return Database.getQueryLocator(q);   
    }
    
    public void execute(Database.BatchableContext bc, List<Invoice__c> inv) {
        
        for(Invoice__c i : inv) {
            i.Invoice_Closed_Date__c = date.today();
        }
        
    }
    
    public void finish(Database.BatchableContext bc) {
        
    }
}