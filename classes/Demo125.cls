public class Demo125{
    public void updated(){
    
            List<account> alst=new List<account>();
            List<account> alst1=[select name from account where name='raju'];
            
            for(Account a:alst1){
                a.name='suresh';
                a.phone='79898878';
                alst.add(a);
                
                        
            
            
            }
            
            update alst;
    
        
                  
        }
        
      
   

}