public class mytaskcontroller
{
  List<Department123__c>  dept;
  //Declaration list variable with Department123__c type
  public List<Department123__c> getDept()
  {
    if(dept==null)
     dept=[select id,Name,Dob__c,Country__c from Department123__c];
     //A List variable stores the records of Department123__c object because of List is Department123__c
        return dept;//it returns the Department123__c records to a PageBlock table .
  
  
  }




}