public class ScheduleInvoices implements Schedulable{
    
    public void execute(SchedulableContext sc) {
        BatchInvoice bc = new BatchInvoice();
        database.executebatch(bc);
    }
    

}