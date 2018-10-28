public class accountdatacls{
public boolean ren{get;set;}
public List<account> lstaccounts=[select id,name,industry,type,(select id,name,firstname,lastname from contacts) from account];
/*public List<account> getAccounts(){
        List<account> lst=[select id,name,industry,type,(select id,name,firstname,lastname from contacts) from account];
        return lst;
    
    }*/
public pagereference rendering(){
        ren=true;
        return null;

}
wrape1 wrapobj;
public List<wrape1> getAccounts(){
        List<wrape1> lstrecords=new List<wrape1>();
        for(integer i=0;i<lstaccounts.size();i++){
                wrapobj=new wrape1();
                wrapobj.acclst=lstaccounts[i];
                wrapobj.rowindex=i;
                for(Contact con:lstaccounts[i].contacts){
                    wrapobj.contlst=con;
                }
                lstrecords.add(wrapobj);
        }
        
        return lstrecords;

}
public class wrape1{
    public Account acclst{get;set;}
    public Contact contlst{get;set;}
    public integer rowindex{get;set;}

}

}