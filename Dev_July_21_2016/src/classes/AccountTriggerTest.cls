@isTest
public class AccountTriggerTest {
    
    @isTest static void TestCreate200Records(){
        
         List<Account> list1=new List<Account>();
        for(Integer i=0;i<200;i++)	{
            Account a=new Account(Name='Test'+i,BillingState ='CA');
            list1.add(a);
         
            
            
        }
           Test.startTest();
            insert list1;
            Test.stopTest();
        
         
        
}
}