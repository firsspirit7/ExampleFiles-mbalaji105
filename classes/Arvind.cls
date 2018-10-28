public class Arvind
    {
        public Arvind(){}
          public string name{get;set;}
          public pagereference Name()
          {
            pagereference ref=new pagereference('/apex/Account123');
            System.debug('Name'+name);
            return null;
          
          
          }
      
                     
   }