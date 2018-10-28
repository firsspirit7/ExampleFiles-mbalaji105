public class Mymap1{
 public  void funmap() 
 {   Map<Id,Contact> mapcon= new Map<Id,Contact>(); 
      mapcon = new Map<Id, Contact> ( [select id,name from Contact]);    
        if(mapcon != null && mapcon.size() >0 )                                  
           system.debug('--------lstContact -------' + mapcon);         
           
            
       }
            
            }