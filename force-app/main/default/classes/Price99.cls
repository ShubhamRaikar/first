public class Price99 implements Database.Batchable<sObject> {
    
     public Database.QueryLocator start(Database.BatchableContext bc) 
    {
        string query = 'select id, Merchandise_price__c from Merchandise__c';
        	return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext bc, list<Merchandise__c> mer) 
    {
        for(Merchandise__c m :  mer) {
            m.Merchandise_price__c = 100;
            
        }
        update mer;
    }
        public void MyMethod() {
            System.debug('Cricket');
        }
        
    
    public void finish(Database.BatchableContext bc) 
    {
        
    }

}