public class Mymap
{
 public static void funmap()
 { 
  Map<Id,Account> Id2Account = new Map<Id, Account>(); 

  Id2Account = new Map<Id, Account> ( [select id,  OwnerId, name,        

                                                   annualRevenue, BillingStreet, BillingState,  

                                                   BillingPostalCode, BillingCountry,  

                                                   ShippingCountry, ShippingCity  

                                                   from Account limit 10]);  

    if(Id2Account != null && Id2Account.size() >0 )            
                         system.debug('--------lstContact -------' + Id2Account);        
 
 }
}