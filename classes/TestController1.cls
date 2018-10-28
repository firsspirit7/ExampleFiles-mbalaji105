public class TestController1
{
   
    //TestController t=new TestController();
  public String sname{get;set;}
  public Double inumber{get;set;}
  public String scountry{get;set;}
  public string sid{get;set;}
  public String sid1{get;set;}
  ID id = sid;
 
    /*Here get;set; are properties return a value and assign a value Date:29/08/2011*/
  public PageReference recSave()
  {
      system.debug('*******sId***'+sid);
  /*Here PageReferecnce is a class to view or set query string parameters and values for a page.Author:Balaji,Date:29/07/2011*/
     if(sid!=null && sid != '' )
   {
       Departments__c dep=[select Name,No_of_Employees__c,Countries__c from Departments__c where id=:sid]; 
     if(dep != null){
         dep.name = sname;
         dep.No_of_Employees__c=inumber;
         dep.Countries__c=scountry;
     }
    
     update dep;

          }
   else 
      {
       Departments__c dep= new Departments__c(Name=sname,No_of_Employees__c=inumber,Countries__c=scountry);       
      insert dep; 
      //system.debug('----------Insert----' + dep);
                  system.debug('*******Entered into Update block');
         
   }
   return null;

       }
  List<Departments__c> a;
  //Here list is used for storing the records of an Object of saleforce.Here 'a' is list variable to store records
  public List<Departments__c> geta()
  {
    a=[select name,id,No_of_Employees__c,Countries__c from Departments__c ORDER BY Name ];
        /*Here 'select' is SOQL statement.We retrieve upto 2,00,000 records by usin SOQL queries*/
   //system.debug('departmentrecords'+a);
   return a;
  }
 
 
  
    public PageReference mylst()
    {
        try{
         List<Departments__c> mylst1;
         mylst1=[select name,No_of_Employees__c,countries__c from Departments__c where id=:sid];
         //system.debug('getted list records'+mylst);
         sname=mylst1[0].name;
         inumber=mylst1[0].No_of_Employees__c;
         scountry=mylst1[0].countries__c;
         system.debug('--------------------------------------------->'+sid);
         system.debug('---------------------------------------------->'+sname);
         }
         catch(Exception e)
         {
           system.debug('======'+e.getMessage());
         }
         return null;
      }   

  //TestController1 b=new TestController1();
   /*TestController is a userdefined class.It is used as a controller in vfpage called EmpDetailController2 Author:Balaji,Date:29/07/2011*/
       
 }