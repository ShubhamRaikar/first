public class contact_Q5Class {

    Contact con;
    
    public contact_Q5Class () {
        con = new Contact();
        
    }
    
    public PageReference doSave() {
        insert(con);
        return new PageReference('/003/o');
    }
    
    public Contact getContact_Q5Class() {
        return con;
    }



}