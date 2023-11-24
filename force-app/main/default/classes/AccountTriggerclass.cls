public class AccountTriggerclass {
    
    public static void updateOwnership(List<Account> acc) {
        
        for(Account a: acc){
            if(a.Industry == 'Education') {
                a.Ownership = 'Public';
            }
        }
}

}