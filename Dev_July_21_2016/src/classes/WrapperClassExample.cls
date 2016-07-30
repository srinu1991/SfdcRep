public with sharing  class WrapperClassExample {
	List<Account> acc = new List<Account>();
    List<Contact> cc = new List<Contact>();
   public  List<Wrapper> wap = new List<Wrapper>();
    public List<Wrapper> getListToDispayWrapper() {
        acc = [select id,name from account];
        cc = [select id,name from contact];
        for(Integer i=0;i<cc.size();i++) {
            wap.add(new Wrapper(acc[i].name,cc[i].name));
        }
        return wap;
    }
    public class Wrapper {
        public String AName{get;set;}
        public String CName{get;set;}
        public Wrapper(String AName,String CName) {
            this.AName=AName;
            this.CName=CName;
        }
    }
}