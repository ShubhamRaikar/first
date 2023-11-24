public class MyClass {

    public void submit() {
    insert con;
        return;
    }


    Contact con;
    
    public MyClass() {
        id i= apexpages.currentpage().getparameters().get('Id');
        
        if (i == null) {
        con = new Contact();
    }
        else {
            con = [Select id, name from Contact Where id=: i];
        }
     }   
    
    public Contact getMyclass()
     {
        return con ;
    }


        
}