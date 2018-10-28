public class wrapperclass
{
 wrapper objwrapper;
 List<wrapper> lstwrapper=new List<wrapper>();
  public integer rowIndex{get;set;}
  
  public wrapperclass(){
  lst = new list<wrapper>();
     List<Account> lstaccount=[select name,industry,type from account];
    // list<College__c> lstcollege=[select name,location__c from college__C];

     for(integer i=0;i<lstaccount.size();i++)
     {
       objwrapper=new wrapper();
       objwrapper.act=lstaccount[i];
       //objwrapper.clg=lstcollege[i];
       objwrapper.isEdit = false;
       objwrapper.rowNo = lst.size();
       lst.add(objwrapper);
     }
      
  }
 public List<wrapper> lst{get;set;}
 public pagereference editmethid(){
     if(lst.size()>rowIndex){
         lst[rowIndex].isEdit = true;
     }
     return null;
 }
 
  public pagereference savemethid(){
     if(lst.size()>rowIndex){
         update lst[rowIndex].act;    
         lst[rowIndex].isEdit = false;
     }
     return null;
 }
 
 public class wrapper{
 public Account act{get;set;}
 public integer rowNo {get;set;}
 public boolean isEdit{get;set;}
 public College__c clg{get;set;}
 }



}