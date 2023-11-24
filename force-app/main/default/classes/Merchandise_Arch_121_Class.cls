public class Merchandise_Arch_121_Class {
    
    public static void merchandisehArch(List<Merchandise__c> mer) {
        
        MerchandiseArch__c merchArch;
        
		List<MerchandiseArch__c> mlist = new List<MerchandiseArch__c>();
        
        for(Merchandise__c m: mer) {
            merchArch = new MerchandiseArch__c();
            
            merchArch.Name = m.Name;
            merchArch.MerchandiseArchDesc__c = m.Merchandise_Description__c;
            merchArch.MerchandiseArchPrice__c = m.Merchandise_price__c;
            merchArch.MerchandiseArchStock__c = m.Merchandise_Stock__c;
            
            mlist.add(merchArch);    
            
        }
        insert(mlist);
        
    }

}