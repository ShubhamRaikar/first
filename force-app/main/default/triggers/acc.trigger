trigger acc on Account (before insert, after insert) {

    if(Trigger.isBefore && Trigger.isInsert) {
    
        // call the class
       InsertAccountClass.AccountUpdate(Trigger.new); 
        
    }
}