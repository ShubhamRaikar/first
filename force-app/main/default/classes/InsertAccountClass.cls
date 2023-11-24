public class InsertAccountClass {
    
    public static void AccountUpdate(List<Account> acc) {
        
        for(Account a : acc) {
            
            if(a.Industry == 'Education') {
                a.Ownership = 'Public';
            }
        }
        
    }

}