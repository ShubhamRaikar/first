@Restresource(urlMapping = '/abcd/*')
global class abc {
    
    @httpGet
    global static List<Invoice__c> getInvoice() {
        
        List<Invoice__c> i = [select id, name from Invoice__c];
        return i;
    }
    
   		@httppost
        global static void createAccount(String des) {
        
            Account a = new Account();
            
            a.name = des;
    
     	insert a;
    }
    
    
    @httpDelete
    global static void DeleteAccount() {
        
        RestRequest req = RestContext.request;
        
        string accountId = req.RequestURI.subString(req.RequestURI.lastindexOf('/') +1);
        
        Account a = [select id, name from Account where id = :accountId];
        
        delete a;
        
    }
    
    
   
    
}