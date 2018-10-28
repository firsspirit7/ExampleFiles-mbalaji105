global class deleteappform implements Database.Batchable<sobject>  
{  
global final String Query;  
global deleteappform(String q)  
{  
Query=q;  
}  
  
global Database.QueryLocator start(Database.BatchableContext BC)  
{  
return Database.getQueryLocator(query);  
}  
  
global void execute(Database.BatchableContext BC,List<applicationform__c> scope)  
{  delete scope;
/*List <applicationform__c> lstAccount = new list<Applicationform__c>();  
for(Sobject s : scope)  
{  
 applicationform__c a = (applicationform__C)s;  
lstAccount.add(a);  
}  
Delete lstAccount;  */
}  
global void finish(Database.BatchableContext BC)  
{  
                //Send an email to the User after your batch completes  
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();  
String[] toAddresses = new String[] {'mbalaji105@gmail.com'};  
mail.setToAddresses(toAddresses);  
mail.setSubject('Apex Batch Job is done');  
mail.setPlainTextBody('The batch Apex job processed ');  
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });  
} 
 
}