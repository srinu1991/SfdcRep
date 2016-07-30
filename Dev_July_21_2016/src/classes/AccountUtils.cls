public class AccountUtils {
      
    public static List<Account> accountsByState(String state) {
        
       
        
      List<Account>     SearchList =[select Id,Name from Account where BillingState=:state];
         return SearchList;
            
           
    }
    
    
    

}