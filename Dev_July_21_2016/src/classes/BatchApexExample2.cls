global class BatchApexExample2 implements Database.Batchable<sObject> {
    global String [] email = new String[] {'gorrepatisreenu@gmail.com'};
    global Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'select id,name from Account';
        return Database.getQueryLocator(query);
        
    }
    global void execute(Database.BatchableContext bc, List<Account> scope) {
        List<Account> acc = new List<Account>();
        for(Account a : scope) {
            a.name = 'Mr2.'+a.name;
            acc.add(a);
        }
        update acc;
    }
    global void finish(Database.BatchableContext bc) {
        
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

  //Below code will fetch the job Id
  AsyncApexJob a = [Select a.TotalJobItems, a.Status, a.NumberOfErrors, a.JobType, a.JobItemsProcessed, a.ExtendedStatus, a.CreatedById, a.CompletedDate From AsyncApexJob a WHERE id = :BC.getJobId()];//get the job Id
  System.debug('$$$ Jobid is'+BC.getJobId());

  //below code will send an email to User about the status
  mail.setToAddresses(email);
  mail.setReplyTo('test@test.com');//Add here your email address
  mail.setSenderDisplayName('Apex Batch Processing Module');
  mail.setSubject('Batch Processing '+a.Status);
  mail.setPlainTextBody('The Batch Apex job processed  '+a.TotalJobItems+'batches with  '+a.NumberOfErrors+'failures'+'Job Item processed are'+a.JobItemsProcessed);
  Messaging.sendEmail(new Messaging.Singleemailmessage [] {mail});
    }

}