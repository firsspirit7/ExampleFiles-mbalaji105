public class Accountwithcontactscls{
public list<wrapper> lstwrapper=new LIst<wrapper>();

public List<wrapper> getlst(){
for(Account a:[select name from account]){
    for(List<contact> lstcont:[select  name,lastname from contact where accountid =:a.id]){
         lstwrapper.add(new wrapper(a,lstcont));
    
    }


}
return lstwrapper;
}

public class wrapper{
 public Account acc{get;set;}
 public List<contact> cntlst{get;set;}

   public wrapper(Account a,List<Contact> lstc){
           acc=a;
           cntlst=lstc;
   
   
   
   }

}



}