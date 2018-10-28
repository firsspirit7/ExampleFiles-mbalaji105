global class email
 {
  webservice static void sendmail(String emailid){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[]{emailid};
        mail.setToAddresses(toAddresses);
        mail.setReplyTo('mbalaji105@appshark.com');
        mail.setSenderDisplayName('Appshark Software ');
        mail.setSubject('Hello Buddy');
        mail.setBccSender(false);
        mail.setUseSignature(false);
        string emailbody='Welcome to Appshark';
        mail.setPlainTextBody(emailbody);
        mail.setHtmlBody(emailbody);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
 }