global class SummarizeAccountTotal implements 
    Database.Batchable<sObject> {

    global String myname;

   global SummarizeAccountTotal(String myname){
      this.myname=myname;
      
   }

   global Database.QueryLocator start(Database.BatchableContext BC){
      
      return Database.getQueryLocator('select id,name from account where name='+myname);
       
   }

   global void execute(
                Database.BatchableContext BC, 
                List<Account> scope){
                    List<Account> ls =new List<Account>();
                    for(Account list1:scope) {
                        list1.name='Saving'+list1.name;
                        ls.add(list1);
                    }
                    update ls;
                }

global void finish(Database.BatchableContext BC){
   }
}