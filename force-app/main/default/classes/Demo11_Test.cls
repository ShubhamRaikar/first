@isTest
private class Demo11_Test {

	@testSetup    
    static void doTestDataSetup() {
        Account act = new Account();
        act.name  = 'Test account';
        insert act;
    }
    
    
    
    
    public testmethod static void doTest() {
        Demo11 d = new Demo11();
        d.sayHello();
        integer r = d.add(10,10);
        
        System.assertEquals(20,r);
        
       Account a = [select id, name from account where id= ''];
        d.getAcc(a);
    }

}