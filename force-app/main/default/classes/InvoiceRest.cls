@RestResource(urlMapping = '/MyInvoice/*')
global class InvoiceRest {
    
    
@httpDelete
        global static void deleteAccount(){
 
 
            RestRequest req = RestContext.request;
            String InvoiceId = req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
            Invoice__c inv = [select id,name from Invoice__c where id= :InvoiceId];
            delete inv;
        }
 
}