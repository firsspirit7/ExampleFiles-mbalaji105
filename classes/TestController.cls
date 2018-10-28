public class TestController
{
  //TestController t=new TestController();
  public String sname{get;set;}
  public Integer inumber{get;set;}
  public String scountry{get;set;}
  public String sid{get;set;}
  public PageReference recSave()
  {
   Departments__c dep= new Departments__c(id=sid,Name=sname,No_of_Employees__c=inumber,Countries__c=scountry);
   insert dep;
   //system.debug('------------>'+sid);
   return null;
  }
  List<Departments__c> a;
  public List<Departments__c> geta()
  {
    a=[select name,id,No_of_Employees__c,Countries__c from Departments__c];
   system.debug('departmentrecords'+a);
   return a;
  }
        }