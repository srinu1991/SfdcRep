public class EmailManager {
    public void sendMail(String address, String subject ,String body) {
        //This is the constructor of the  Messaging Namespace class
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[] {address};
        mail.setToAddresses(toAddress);
        mail.setPlainTextBody(body);
        mail.setSubject(subject);
        //Call SendEmail MEthod.
        Messaging.SendEmailResult[] results =Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail} );
        //Helper MEthod
        inspectResults(results);
    }
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
         Boolean resultvalue = true;
        for(Messaging.SendEmailResult res: results) {
            if(res.isSuccess()) {
                System.debug('Email sent Successuflly');
            } else {
                resultvalue = false;
                System.debug('These are the errors::'+res.getErrors());
                
            }
        } return resultvalue;
    }
}