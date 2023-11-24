@RestResource(urlMapping = '/ab/*')
global class RestInvoice {
    
    @httpGet
    global static List<Account> getInvoice() {
        
        List<Account> a = [select id, name from account];
        return a;
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