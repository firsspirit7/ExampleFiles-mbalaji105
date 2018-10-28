trigger myAccountTrigger1 on Account (after delete, after insert, after update, 
before delete, before insert, before update) {
List<Contact> li=new List<Contact>();
for(Account a:Trigger.new){
 Contact con=new Contact(lastname=a.name);
 li.add(con);
}
insert li;
}