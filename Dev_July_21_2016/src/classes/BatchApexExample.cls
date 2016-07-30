global class BatchApexExample  implements Database.Batchable<sObject> {
    String query;
    public BatchApexExample(String q) {
        query=q;
    }
    global Database.QueryLocator start(Database.BatchableContext bc) {
        
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc, List<Contact> scope) {
         
         
        for(Contact c : scope) {
           System.debug(c);
        }
         
        
    }
    global void finish(Database.BatchableContext bc) {
          
    }
}