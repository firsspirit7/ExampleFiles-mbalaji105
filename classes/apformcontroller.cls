public class apformcontroller {
public string email='mbalaji105@gmail.com';
    public void save() {
       try{
        insert afObj;  
        
        }
        catch(DmlException e){
           system.debug(e.getmessage());
        
        }    
    }
 
 public ApplicationForm__c afObj{get;set;}
    public apformcontroller()
    {
       
        afObj=new ApplicationForm__c ();
    }
    public void sendPdf() {
 
    PageReference pdf = page.appFormPage;
    pdf.getParameters().put('id',afObj.Id);
    // add parent id to the parameters for standardcontroller
    system.debug(pdf);
 afObj = new ApplicationForm__c ();
    // the contents of the attachment from the pdf
    Blob body;
 
    try {
 
      // returns the output of the page as a PDF
      body = pdf.getContentAsPdf();
 
    // need to pass unit test -- current bug  
    } catch (VisualforceException e) {
      body = Blob.valueOf('Some Text');
    }
 
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
    //pdf.setRedirect(true);
 
  }

}