public class CustomControllerExample {
    //define a pearamenter
    private final Account demo;
    //create a zero argument constructor for the calss
    public CustomControllerExample() {
        demo =[select id ,name from account where id =: Apexpages.currentPage().getParameters().get('id')];
        
    }
    public Account getdemo() {
        return demo;
    }
    public PageReference save() {
    update demo;    
        return null;
    }

}