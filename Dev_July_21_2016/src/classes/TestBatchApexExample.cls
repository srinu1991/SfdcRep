@isTest(SeeAllData=true)
public class TestBatchApexExample {
    @isTest
    static void testBatchExample() {
       String  query = 'select id from contact Limit 200';
       
         
        Test.startTest();
         BatchApexExample e = new BatchApexExample(query);
        Database.executeBatch(e,200);
        Test.stopTest();
    }

}