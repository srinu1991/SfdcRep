trigger AccountTrigger on Account (After Insert,Before Insert,after update,before delete) {
    /*if(Trigger.isInsert) {
        if(Trigger.IsAfter) {
   // List<Contact> lc= new List<Contact>();
         
            for(Account a:Trigger.new){
                Contact cc = new Contact( );
                cc.LastName=a.Name;
                insert cc;
                 //lc.add(cc);
            }
           // insert lc;
        
    }
    if(Trigger.isBefore) {
        for(Account a:Trigger.new) {
            a.Cust_Date_Time__c=System.now();
        }
    }
    
    
    }*/
    
    for(Account a : [select id from account where id In (select accountId from opportunity) and id In:Trigger.old]) {
        Trigger.oldMap.get(a.id).addError('cannot delete this account bec its has related opportunitues');
    }
}