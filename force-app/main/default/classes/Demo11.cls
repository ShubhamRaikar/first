public class Demo11 {
    
    public void getAcc(Account act) {
        System.debug(act);
    } 
    
    @testVisible
    private integer add(integer a , integer b) {
        integer res = a + b ;
        System.debug('Res = ' + res);
        return res;
    }
    
    public void sayHello() {
        System.debug('Hello');
    }
    
}