public with sharing class pagetestingcontroller1    {
    /*public pagetestingcontroller1(String text) {
name=text;
system.debug('pagetest11'+name);

    }*/
    public string email='mbalaji105@gmail.com';
     public string name;

    public String getname(){
        return name;
    
    }
    public void m(string value)
    {    
        
       name=value;
       system.debug('my name is '+name);
       sendpdf();
       
    }
    public void setname(String value){
        this.name= value;
    }
       
      public void sendPdf() {

      Blob body;
      body =apexPages.currentpage().getContentasPdf();
 
    
 
    Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();
    attach.setContentType('application/pdf');
    attach.setFileName('testPdf.pdf');
    attach.setInline(false);
    attach.Body = body;
 
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    mail.setUseSignature(false);
    mail.setToAddresses(new String[] { email });
    mail.setSubject('PDF Email Demo');
    mail.setHtmlBody('Here is the email you requested! Check the attachment!');
    mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach }); 
 
    // Send the email
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
 
    ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Email with PDF sent to '+email));
 
    
 
  }

}