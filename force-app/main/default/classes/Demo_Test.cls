//@isTest(seeAllData = true)

@isTest
private class Demo_Test {
    
    // example of testSetup
    @testSetup
    static void doTestDataSetup() {
        Account act = new Account();
        act.name = 'Test Account';
        insert act;
    }
    
    
    	@isTest
        private static void doTest() {
            
            Test.startTest();
            
            Demo d = new Demo();
            d.sayHello();
            //d.add(10,10);
            
            integer r = d.add(10,100);
            System.assertEquals(110,r,'Result not Matched');
            
            //Account a = [select id, name from Account where id = '0015j00001L58TKAAZ'];
            //d.getAccount(a);
   
            // example of testSetup
             Account a = [Select id, name from Account where name = 'Test Account'];
             d.getAccount(a);
            
            
            user u = [select id, name from user where username = 'shu17@email.com'];
            System.runas(u) {
            
            Merchandise__c m = new Merchandise__c();
            m.name = 'Test jeans';
            insert m;
            
            Merchandise__c mer = [select id, name from Merchandise__c where name  = 'Test jeans'];
            delete mer;
            }
            
            Test.stopTest(); 
        
    }
            
}