public class ContactDeleteClass {
    
    public static void contactdel(List<Contact> con) {
        List<Contact> clist = new List<Contact>();
        for(Contact c: con) {
            if(c.AccountId != NULL) {
                c.addError('Can`t Delete Conatct As Account Is Associated');
            }
        }
    }

}