public class ControllerExtensionExample {
    private final Account acct;
    public ControllerExtensionExample(Apexpages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
    }
    public String getGreeting() {
        return 'Account details'+acct.name+'========='+Acct.Id;
    }
    

}