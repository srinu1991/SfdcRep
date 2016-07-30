public class LargeSetData {
    public List<Account> getLargeSetCount() {
        List<Account> datacount = [select id,name from Account];
        return datacount;
    }
}