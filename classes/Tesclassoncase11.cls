public class Tesclassoncase11 {

    static testMethod void myUnitTest() {
      Case c=new  Case();
      c.status='New';
      c.origin='email';
      insert c;
      Case c1=new Case();
      c1.status='new';
      c1.origin='email';
      c1.parentid=c.id;
      insert c1;
      c.status='closed';
      update c;
      
    }
    
       
        
    
}