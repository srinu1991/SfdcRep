public class NewRecWithCustomControllerExample {
    public Account account{get;private set;}
    public NewRecWithCustomControllerExample() {
        Id id = Apexpages.currentPage().getParameters().get('id');
        account = (id == null) ? new Account():[select id ,name from account where Id =:id];
    }
    public PageReference save() {
        try{
            upsert(account);
            
            
            
        }catch(System.DmlException de) {
            Apexpages.addMessages(de);
            return null;
        }
        PageReference succes = new Apexpages.StandardController(Account).view();
        return succes;
    }

}