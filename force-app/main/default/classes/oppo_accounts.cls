public class oppo_accounts {
    
    public static void getAllAct() {
        List<Opportunity> opp = [select id, name, Account.Name from Opportunity];
        
        for(Opportunity o: opp)  {
            System.debug(o.id + '----' + o.name + '-------' + o.AccountId);
        }
    }
}