public class accountdatacls231{
public string id{get;set;}
public integer rowindex1{get;set;}
public List<Account> lstaccount{get;set;}
List<wraper1> lstwraper;
public void rendering(){
        lstaccount=[select id,name,industry,type,(select id,name,firstname,lastname from contacts) from account where id=:id];
         //if(lstwraper.size()>rowindex1)
              for(wraper1 objwraper1:lstwraper)
                  objwraper1.ren='none';
                lstwraper[rowindex1].ren='block';
                
                 
       

}
public List<wraper1> getAccounts1(){
    if(lstwraper == null || lstwraper .size()==0){
        integer i=0;
        lstwraper=new List<wraper1>();
        wraper1 wrapobj;
         for(Account acc:[select id,name,industry,type,(select id,name,firstname,lastname from contacts) from account]){
                wrapobj=new wraper1();
                wrapobj.accobj=acc;
                wrapobj.ren='none';
                wrapobj.rowindex=i;
                lstwraper.add(wrapobj);
                i++;  
                
        }
    }
    return lstwraper;
}
public class wraper1{
    public Account accobj{get;set;}
    public integer rowindex{get;set;}
    public string ren{get;set;}
    public List<Contact> contobj{get;set;}

}

}