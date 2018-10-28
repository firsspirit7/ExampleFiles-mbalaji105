trigger counttrig on Student__c (before insert) {
public static integer count=0;
if(Trigger.new!=null)
{
  
  for(Student__c s:Trigger.new)
  {
     
       count++;
       s.rcount__c=count;
     
  
  }
  
}

}