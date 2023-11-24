@RestResource(urlMapping = '/myAccount/*')
global class RestExample {
    
    @httpGet
    global static List<Account> getAllAccount() {
        List<Account> act = [Select id, name from Account];
    return act;
    }
    
    @httpPost
    global static void createAccount(String Actname) {
        Account a = new Account();
        a.name = Actname;
        insert a;
    }
    
    @httpDelete
    global static void DeleteAccount() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        
        String rid = req.requestURI.subString(req.requestURI.lastIndexOf('/') + 1);
        
        Account act = [Select id, name from Account where id=: rid];
        
        delete act;
        
        
    }

}