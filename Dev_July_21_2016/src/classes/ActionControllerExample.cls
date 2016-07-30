public class ActionControllerExample {
    public List<SelectOption> Alphabets {get; set;}
    public List<SelectOption> Fruits {get; set;}
    public String SelectedAlphabet {get; set;}
   
    /*A Constructor which will build the intial list of Alphabets*/
    public ActionControllerExample(){
        Alphabets = new List<SelectOption>();
        Fruits    = new List<SelectOption>();
       
         /*This is to add the NONE option for our Picklists*/
        SelectOption option = new SelectOption('--None--', '--None--');
        Alphabets.add(option);
        Fruits.add(option);
       
        option = new SelectOption('C', 'C');
        Alphabets.add(option);
       
        option = new SelectOption('D', 'D');
        Alphabets.add(option);       
    }
   
    /*This Method that will actually build the Fruits list for us. The ActionFunction will be calling this function as and when a User changes an Alphabet from the 1st List.*/
    public void createFruitList(){
        /*Always clear the List when begin so that previous values will be removed.*/
        Fruits.clear();
       
        Fruits.add(new SelectOption('--None--', 'None'));
       
        if(SelectedAlphabet == 'C'){
            Fruits.add(new SelectOption('Carrot','Carrot'));
            Fruits.add(new SelectOption('Cabagie','Cabagie'));
        }
        else if(SelectedAlphabet == 'D'){
            Fruits.add(new SelectOption('DrumStick','DrumStick'));
            Fruits.add(new SelectOption('DDD','DDD'));
        }
    }
}