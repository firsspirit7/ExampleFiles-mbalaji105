public class pageredirect
{
     public PageReference submit() 
     {
       pagereference ref= new pagereference('/apex/Mytask');
       ref.setredirect(true);    
              return ref;
    }





}