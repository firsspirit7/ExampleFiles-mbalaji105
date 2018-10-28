trigger accountTestTrggr3 on Account (after delete) {
if(Trigger.isDelete){
List<Contact> con=new List<Contact>();
for(Account a: Trigger.old){
 
     Contact con1=new Contact(lastname=a.Name,MailingCountry=a.BillingCountry);
     con.add(con1);
     
 }
     insert con;
    } 
}