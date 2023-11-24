public class VFQ5_Class {

    
    Contact con;
    
    public VFQ5_Class () {
        con = new Contact();
    }

    public PageReference doSave() {
    
        insert (con);
        return new pageReference('/003/o');
    }

    public Contact getVFQ5_Class() {
        return con;
    }

}