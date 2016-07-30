public class AccountHandler{


   public Static Account insertNewAccount(String s) {
      
     
         try{
         
                 Account a = new Account(Name = s );
                 insert a;
                   
                  System.debug('===== ');
                 System.debug('=========Commit');
         System.debug('my demo');
                 return a;
                
            
         }catch(DmlException e) {
         
         System.debug('A DML exception has occurred:'+
                        e.getMessage());
            //system.debug("DML Exception"+ e.getMessage());
            return null;
         }
    
   
   
   }
   
    
}