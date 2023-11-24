trigger oppEsclated on Opportunity(before insert, after insert, before update, after update, before delete, after delete , after undelete) {
        
        if(Trigger.isBefore && Trigger.isUpdate) {
        
        // call the class
        
        OppEsclatedClass.oppUpdate(Trigger.old, Trigger.new);
            
        }   
}