public with sharing class Custom_with_Sharing {

    public Account getCustom_with_Sharing() {
    
    Account a = [Select id, name From Account where id= '0015j00001L4YPWAA3'];
        return a;
    }


        
}