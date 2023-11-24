public class Sch11 implements Schedulable{
    
    public void execute(SchedulableContext sc) {
        MyBatch18 b= new MyBatch18();
		database.executebatch(b);
    }
}