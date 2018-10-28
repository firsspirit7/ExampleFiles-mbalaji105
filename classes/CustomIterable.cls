global class CustomIterable  implements Iterator<Account>{ 
   List<Account> acc=new List<Account>();
   List<Account> accs {get; set;} 
   Integer i {get; set;} 

   public CustomIterable(){ 
       accs =[SELECT Id, Name FROM Account];
       
       i = 0; 
   }   

   global boolean hasNext(){ 
       if(i >= accs.size()) 
           return false; 
       else
          return true; 
   }    

   global Account next(){ 
      if(i == 8){return null;} 
       i++; 
       //acc.add(accs[i-1]);
       return accs[i-1]; 
   } 
  
}