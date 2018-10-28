trigger emailquotetrig on Opportunity (after insert, after update) {
    List<quote> quotelist=new List<quote>();
    for(opportunity opp:trigger.new){
        quote q=new quote();
        if(opp.StageName=='Closed Won'){
            try{
            q=[select primary__c,name,id,opportunityid from quote where primary__c=true and opportunityid=:opp.id];
            //string strurl='https://ap1.salesforce.com/q.id';
    Messaging.reserveSingleEmailCapacity(1);
    // Now create a new single email message object 
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
    // Strings to hold the email addresses to which you are sending the email
    String[] toAddresses=new String[]{'patlammagari@gmail.com'};
    // Assign the addresses for the To  lists to the mail object.  
    mail.setToAddresses(toAddresses);
    // Specify the address used when the recipients reply to the email.
    mail.setReplyTo('ramanareddy477@gmail.com');
    // Specify the name used as the display name.
    mail.setSenderDisplayName('Salesforce Support');
    // Specify the subject line for your email address.
    mail.setSubject('Please click on the link to view the quote record');
    // Set to True if you want to BCC yourself on the email.  
    mail.setBccSender(false);
    // Optionally append the salesforce.com email signature to the email.  
    // The email address of the user executing the Apex Code will be used.
    mail.setUseSignature(false);
    // Specify the text content of the email. 
    mail.setPlainTextBody('https://ap1.salesforce.com/'+ q.id);
    // Send the email you have created. 
    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            }catch(system.QueryException e){
                opp.adderror('Need to select a primary quote among the related quotes'); 
            
            }
            
        }

    }
}