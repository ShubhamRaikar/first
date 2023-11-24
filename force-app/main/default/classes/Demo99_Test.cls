@isTest
private class Demo99_Test {

         @testSetup
            static void doTestSetup() {
            Account abc = new Account();
            abc.name = 'Test';
           
            insert abc;
           }

    public testMethod static void doTest() {
            
            Test.startTest();
            demo99 d = new demo99();
            d.dodemo();
            
            Integer r = d.add(10,10);
            System.assertEquals(20,r,'Not equal');
            
            Account a = [select id, name from Account where name = 'Test'];
            d.getAccount(a);
            
            Test.stopTest();
            
            
            
            
            
            
         
    
    }
}