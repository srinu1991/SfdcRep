public class InnerClass extends OutterClass {
     
   OutterClass outter = new OutterClass();
    
    Public Integer quantity=20;
    
    
    public void demo1() {
        outter.setPrice(50);
       Integer total = (outter.getPrice())*(quantity);
        System.debug(total);
      
    }
}