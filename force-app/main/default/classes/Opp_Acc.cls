public class Opp_Acc {
    
    public static void Opportunity_with_account() {
        
        List<Account>  opp = [Select id, name , (Select id , name from Opportunities) from Account];
        
        for(Account o : opp) 
        {
            System.debug(o.id+'______'+o.name+'______'+o.opportunities);
        }
    }

}