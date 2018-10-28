public class chooseColor123 {
 public String str{get;set;}
   /* public String Goto() {
    PageReference pageRef = new PageReference('str');
      
        return null;
    }*/
  public pagereference goto()
  {
    pagereference ref;
    //if(str=='red')
     ref=new pagereference(str);
             return ref;
    
  }
    
   
   

}