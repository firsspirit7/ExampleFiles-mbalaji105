trigger helloworldstutrigger on Student__c (before insert) {
Student__c[] std=Trigger.new;
MyHelloworld.addHelloworld(std);

}