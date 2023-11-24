public class demo99 {
    
    @testvisible
    private Integer add(Integer a, Integer b) {
        Integer res = a + b;
        System.debug('Res = ' + res);
        return res;
    }
    
    public void getAccount(Account act) {
      	System.debug(act);
    }
    
    
    
    public void dodemo() {
        System.debug('Hello Apex');
    }
    
    
   
}