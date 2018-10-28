public class accountdetail{
public boolean detail{set;get;}
public boolean detail1{set;get;}
public id cid{set;get;}   
 public accountdetail(ApexPages.StandardSetController controller) {
  detail=true; 
  detail1=false;   
   }
   public void detail(){   
   detail=false;  
    detail1=true; 
    }
    public List<Account> acc =[select name from Account];
    public pageReference previous(){
   
      return null;
    }
}