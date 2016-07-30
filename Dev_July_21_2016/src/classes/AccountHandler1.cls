public class AccountHandler1 {
    public static void createNewOpportunity(List<Account> acc)  {
        List<Opportunity> list1=new List<Opportunity>();
        for(account a:acc)  {
             Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            list1.add(opp);

        }   
        if(list1.size()>0)  {
            insert list1;
        }
    }
}