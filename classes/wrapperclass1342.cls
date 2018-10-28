public class wrapperclass1342{
    

   

    public PageReference save() {
     if(wrapperlst.size()>rowIndex){
           wrapperlst[rowIndex].isEdit=false;
           update wrapperlst[rowIndex].acc;
        }
        return null;
    
       
    }

wrapper wrapperobj;
public integer rowIndex{get;set;}
public List<wrapper> wrapperlst{get;set;}
public wrapperclass1342(){
wrapperlst=new List<wrapper>();
List<account> acclist=[select name,industry,type from account];
if(acclist.size()>0){
for(integer i=0;i<acclist.size();i++){
    wrapperobj=new wrapper();
    wrapperobj.acc=acclist[i];
    wrapperobj.rowNumber=i;
    wrapperlst.add(wrapperobj);
  }
}
}
 public PageReference Edit() {
        if(wrapperlst.size()>rowIndex){
           wrapperlst[rowIndex].isEdit=true;
        }
        return null;
    }


public class wrapper{
public Account acc{get;set;}
public integer rowNumber{get;set;}
public boolean isEdit{get;set;}
}

}