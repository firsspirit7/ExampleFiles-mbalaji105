public class MyHelloworld{
public static void addHelloworld(Student__c[] st){

for(Student__c s:st){
  if(s.name!='balaji'){
    s.name='balaji';
  }
}
} 
}