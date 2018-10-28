trigger trigduplicate on Student__c (before insert) {

for(Student__c s:Trigger.new)
{ 
 if(s.Installment__c>=2000)
 {
   s.Name='balaji';
 }
  
 
}
}