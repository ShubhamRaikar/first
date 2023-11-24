public with sharing class VFQ4_class {

    public Account getVFQ4_class() {
        Account a = [select id, name from Account where id = '0015j00001L58TKAAZ'];
        return a;
    }


        
}