public with sharing class Httpexample {
	
	

	public static void callingWebRequest(){
    	
    	 HttpRequest req = new HttpRequest();
	     req.setEndpoint('http://www.gmail.com');
	     req.setMethod('GET');
	     //Specify the required user name and password to access the endpoint
	     String username = 'durga.kandula@appshark.com';
	     String password = 'chowdary@105';
	  
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