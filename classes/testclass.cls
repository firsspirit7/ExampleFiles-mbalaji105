public class testclass
{
 public testclass(){}
 public string name{get;set;}
public pagereference submit()
{
pagereference ref=new pagereference('/apex/testpage') ;
system.debug('---->'+name);
return ref;
}
}