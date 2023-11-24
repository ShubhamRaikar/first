trigger Merchandisetrigger on Merchandise__c (before delete, after delete, before insert, after insert) {
    
     if(Trigger.isBefore && Trigger.isDelete) {
          // call the class
          
          Merchandise_Arch_121_Class.merchandisehArch(Trigger.old);
          
         }
}