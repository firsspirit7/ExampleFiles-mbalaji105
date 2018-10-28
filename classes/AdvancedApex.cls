public class AdvancedApex
{
  public void CheckIt()  
  {
    Contact oCnt=new Contact();
    oCnt.LastName='Test0001';
    insert oCnt;
    system.debug('********oCnt****'+oCnt);
  } 
  public void CheckUpdate()
 {

  Contact oCnt=new Contact();
  oCnt=[select id,Name,Phone,Fax From Contact where id=:'00390000006F9BV'];
  if(oCnt!=null)
    {
      oCnt.LastName='Test0001';
      oCnt.Phone='7609789070';
      oCnt.Fax='0978907';  
      update oCnt;
    }
   
   }
   public void CheckDelete()
   {
     delete[select id,Name,Phone,Fax From Contact where id=:'00390000006F9BV'];
     }
     }