public class accountlist
{
 public string myval{get;set;}
 public void dothethings()
{
   Contact obj=new contact();
   obj.lastname=myval;
   insert obj;


}
}