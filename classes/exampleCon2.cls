public class exampleCon2
 {    String uname;    
      public String getUsername() 
      {       
      
        return uname;   
        
         }                
         
         public PageReference sayHello() 
         {        
         uname = UserInfo.getName();     
            return null;    
           } 
           }