public with sharing class AccountController {
	public Account getAccount(){
		return[select id,name from Account limit 5];
	}

	public static void callingWebRequest(){
    	
    	 HttpRequest req = new HttpRequest();
	     req.setEndpoint('http://www.gmail.com');
	     req.setMethod('GET');
	     //Specify the required user name and password to access the endpoint
	     String username = 'prasad.pioneer@gmail.com';
	     String password = '123456@123';
	  
	     Blob headerValue = Blob.valueOf(username + ':' + password);
	     // As well as the header and header information  
	     
	     String authorizationHeader = 'BASIC ' +
	     EncodingUtil.base64Encode(headerValue);
	     req.setHeader('Authorization', authorizationHeader);
	    
	  	try{
	  		// Create a new http object to send the request object
	  		 Http http = new Http();
	  		 // A response object is generated as a result of the request
		     HTTPResponse res = http.send(req);
		     system.debug('---Result-----' + res);
		     system.debug('---Result Body ----'+ res.getBody());
	  		
	  	}
	  	catch(CallOutException ex){
	  		system.debug(ex.getMessage());
	  	}
	    
	    
    	
    }
	

}