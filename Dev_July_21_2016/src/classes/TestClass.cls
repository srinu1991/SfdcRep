public class TestClass {
    
     private final List<Id> contactid;
    public List<Contact> con;
    public TestClass(ApexPages.StandardController controller) {
        con =[select id from contact];
        for(Integer i =0;i<250;i++){
            contactid.add(con[i].Id);
            System.debug(contactid);
        }
    }
	 
     
    public void sendMail() {
        Messaging.MassEmailMessage msg = new Messaging.MassEmailMessage();
        msg.setTargetObjectIds(contactid);
        messaging.sendEmail(new Messaging.MassEmailMessage[]{msg});
        
    }
     
    
}