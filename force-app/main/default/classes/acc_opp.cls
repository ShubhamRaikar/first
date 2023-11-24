public class acc_opp {
    
    public static void getAccount() {
        
        List<Opportunity> Acclist = [select id, name, Account.name from Opportunity];
        
        for(Opportunity acc : Acclist) {
            System.debug(acc.AccountId + '_________' + acc.Name);
        }
        
    }

}