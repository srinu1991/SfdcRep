public virtual  class DemoSetterGetterClass {
    
    
    public Integer val {
        get{ return val;}
        set{ val = value;}
    }
     //private String  strVal='Hello World';
     
  /* public void setVal(Integer a)
    {
        val=a;
    }
    public Integer getVal()
    {
        return val;
    }*/
    
    public virtual void demo() {
        System.debug('this is outter Class'+val);
    }
        
    

}