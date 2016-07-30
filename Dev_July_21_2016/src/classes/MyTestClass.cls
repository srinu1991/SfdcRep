public class MyTestClass {
    public String cname{set;get;}
    public PageReference  show() {
        SummarizeAccountTotal ta=new SummarizeAccountTotal(cname);
        Id batchid=Database.executeBatch(ta);
            return null;         
        
    }
}