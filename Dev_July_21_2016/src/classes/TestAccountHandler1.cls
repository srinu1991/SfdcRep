@isTest  
public class TestAccountHandler1 {
    @isTest
     static void TestAccountHandler1() {
      
      
      
        Account a = new Account(name='abcd');
        insert a;
         
            
           
             List<Account> acc= new List<Account>();
             acc.add(a);
             
      AccountHandler1.createNewOpportunity( acc);
            
            
         
       
         
        
         
    }
}