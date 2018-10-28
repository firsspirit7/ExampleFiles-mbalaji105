public with sharing class Sampleclassinvokingwsdlclass {

    //wsdlclass.RefundProcessSoap wr=new wsdlclass.RefundProcessSoap();
    public static  void test1(){
    	try{	
		   	wsdlclass.RefundProcessSoap wr = new wsdlclass.RefundProcessSoap();
		  	string sResult= '';  
		 	sResult =  wr.RefundProcessPayments('7987','74365','46214');
		    system.debug(sResult);
		}
	 	catch(Exception e){
	  		 system.debug(e.getMessage());
		}
    }
}