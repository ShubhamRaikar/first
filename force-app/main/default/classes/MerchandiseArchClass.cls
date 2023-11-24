public class MerchandiseArchClass {
    
    public static void InsertMerArch(List<Merchandise__c> mer) {
        
        MerchandiseArch__c merArch = new MerchandiseArch__c();
       List<MerchandiseArch__c> mlist = new List<MerchandiseArch__c>();
        
        for(Merchandise__c m : mer) {
            
            merArch.Name = m.Name;
            merArch.MerchandiseArchDesc__c = m.Merchandise_Description__c;
            merArch.MerchandiseArchPrice__c = m.Merchandise_price__c;
            merArch.MerchandiseArchStock__c = m.Merchandise_Stock__c;
            
            mlist.add(merArch);
      
        }
        
        insert(mlist);
        
    }

}