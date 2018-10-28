public class testclass1 {
    public testclass1() {}
    public String name { get; set;}
    public pagereference click()
    {
      pagereference ref = new pagereference('/apex/testpage1');
                  system.debug('----->'+name);
                  name='ravi';
     ApexPages.currentPage().getParameters().get('name');    
       return ref;
    }

}