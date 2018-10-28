public class wrappertest{
 wrapper wra;
 List<wrapper> objslst=new List<wrapper>();
 public List<wrapper> getlst(){
  List<Account> acclst=[select  name from account];
  List<college__c> clglst=[select name,location__c from college__c];
 for(integer i=0;i<clglst.size();i++){
    wra=new wrapper();
    wra.acc=acclst[i];
    wra.clg=clglst[i];
    objslst.add(wra);
    
  }
  return objslst;
  
 }
public class wrapper{
public Account acc{get;set;}
public College__c clg{get;set;}
}


}