public with sharing class empdetailinsert
 {

public String name1 { get; set; }

    public String department{get;set;}
    public String email{get;set;}
    public String phone{get;set;}
    public Double salary{get;set;}
    public String id{get;set;}
  
    public PageReference recsave1() 
    {
    
    EmployeeDetail__c a = new EmployeeDetail__c(Name=name1,Department__c=department,Email__c=email,Phone__c=phone,salary__c=salary);
    
    insert a;
   
                
        return null;
        
    }
       
    List<EmployeeDetail__c> d;
  public  List<EmployeeDetail__c> getd()
     {
     
              if(d==null)
               d=[select id,Name,Department__c,Email__c,Salary__c,Phone__c from   EmployeeDetail__c];
               return d;  
     
     }


     

    
    
}