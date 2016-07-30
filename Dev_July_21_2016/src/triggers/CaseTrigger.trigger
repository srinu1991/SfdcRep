trigger CaseTrigger on Case (Before insert, after insert, before update, after update) {
    if(Trigger.isInsert){
        // with in the same object  we need to use before.
        if(Trigger.isBefore) {
            System.debug('=============Trigger.isBefore========'+Trigger.isBefore);
            System.debug('=================Trigger.isInsert========='+Trigger.isInsert);
        }
        if(Trigger.isAfter) {
            System.debug('================Trigger.isAfter============'+Trigger.isAfter);
            System.debug('=================Trigger.isInsert==========='+Trigger.isInsert);
        }
           }
     
    

}