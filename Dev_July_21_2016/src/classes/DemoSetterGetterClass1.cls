public class DemoSetterGetterClass1 extends DemoSetterGetterClass {
    DemoSetterGetterClass outerclass=new DemoSetterGetterClass();
       public override void demo() {
			System.debug('This is Child Class overriden method');       
        
           }
    
    public void demo2() {
        
         outerclass.val= 50;
        System.debug(outerclass.val);
        
    }
        
     
}