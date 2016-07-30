public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> Acc)	{
        List<Account> l1=new List<Account>();
        for(Account a:Acc)	{
               system.debug(a.Name);
            if(a.ShippingState != a.BillingState)	{
                a.ShippingState=a.BillingState;
                
                
            }
                    }
            
        
    }
   }