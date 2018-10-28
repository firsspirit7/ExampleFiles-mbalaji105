public with sharing class webclass {

   public static  void name(){
   	try{
   	classofservice.StockQuoteSoap obj=new  classofservice.StockQuoteSoap();
   	obj.GetQuote('ramudu');
   
   	}
   	catch(Exception e)
   	{
   	 system.debug(e.getMessage());
   	
   	}
   	system.debug('balaji');
   }
    

}