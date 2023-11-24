public class MerchandiseArch11Class {
    
    public static void insertMerchandiseArch(List<Merchandise__c> mer) {
		
		 MerchandiseArch__c merArch;

		List<MerchandiseArch__c> mList = new List<MerchandiseArch__c>();
		
		for(Merchandise__c m : mer) {
			
			merArch = new MerchandiseArch__c();
			
			merArch.Name = m.Name;
			merArch.MerchandiseArchDesc__c = m.Merchandise_Description__c;
			merArch.MerchandiseArchPrice__c = m.Merchandise_price__c;
			merArch.MerchandiseArchStock__c = m.Merchandise_Stock__c;
			
			mList.add(merArch);
		   
		}

		insert (mList);
		
	}

}