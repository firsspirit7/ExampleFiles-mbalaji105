public class Test4
{
  public String sname{get;set;}
  public Double inumber{get;set;}
  public String scountry{get;set;}
  public String shid{get; set;}  

    public PageReference mylst()
    {
         List<Departments__c> mylst;
         mylst=[select name,No_of_Employees__c,countries__c from Departments__c where id=:shid];
         //system.debug('getted list records'+mylst);
         sname=mylst.get(0).Name;
         inumber=mylst.get(0).No_of_Employees__c;
         scountry=mylst.get(0).countries__c;
         system.debug('--------------------------------------------->'+shid);
         return null;
      }   
  public PageReference recSave()
  {
   Departments__c dep= new Departments__c(id=shid,Name=sname,No_of_Employees__c=inumber,countries__c=scountry);
   upsert dep;
   return null; 
  }
  
  List<Departments__c> deplst;
  public List<Departments__c> getdeplst()
  {
   deplst=[select name,id,No_of_Employees__c,countries__c from Departments__c];
   return deplst;
  }
  }