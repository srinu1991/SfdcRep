@isTest
public class AccountTrigger_Test	{
	@isTest static  void testBulckRecordsCreation()	{
		//List<Account> accountList = new List<Account>();
			for(Integer i=0;i<200;i++)	{
				Account acc=new Account(Name='Test Name'+i);
				//accountList.add(acc);
					insert acc;
			}
			Test.startTest();
			//insert accountList;
			Test.stopTest();
			List<Account> verifyAccountList = [Select Id from Account];
			System.assertEquals(200,verifyAccountList.size());
			List<Opportunity> verifyOppList = [Select Id from Opportunity];
			System.assertEquals(200,verifyOppList.size());
	}

}