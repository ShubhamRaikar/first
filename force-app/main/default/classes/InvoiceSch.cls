public class InvoiceSch implements Schedulable{

    public void execute(schedulableContext sc){
        Invoice_updates1 i = new Invoice_updates1();
        database.executebatch(i);
    }

}