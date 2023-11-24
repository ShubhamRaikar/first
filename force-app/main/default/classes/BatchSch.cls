public class BatchSch implements Schedulable {
    
    public void execute(SchedulableContext sc) {
        BatchInv bc = new BatchInv();
        database.executebatch(bc);
    }

}