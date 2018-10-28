trigger accountTestTrggr2 on Account (after insert,after update,after undelete) {
List<Account> acc=[select BillingCountry from Account];
List<Contact> con=new List<Contact>(); 
List<customsett1__c> cs=[select name,Country__c,City__c from customsett1__c];

if(Trigger.isInsert){
for(Account a: Trigger.new){
 
//List<customsett1__c> cs=[select name,Country__c,City__c from customsett1__c];

 for(Integer i=1;i<=5;i++){
     Contact con1=new Contact(accountid=a.id,lastname=a.Name+'.'+i,MailingCountry=a.BillingCountry);
     con.add(con1);
    
 
 }
 
 }
if(con.size()>0 && (cs[0].Country__c==con[0].MailingCountry || cs[1].Country__c==con[0].MailingCountry)){
      
      insert con;
    } 
}
if(Trigger.isUndelete){
for(Account a: Trigger.old){
    undelete a;
    system.debug('Deleted Records:'+a);
    Contact ct=new Contact( );
    undelete ct;
}

 }

}