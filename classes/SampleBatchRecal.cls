global class SampleBatchRecal implements Database.Batchable<sobject>{

global Database.queryLocator start(Database.BatchableContext bc){

return Database.getQueryLocator('select id,name,Email__c,location__c from applicationform__c');
}

global void execute(Database.batchableContext bc,list<applicationform__c> obj){
user u=[select id from user where id= '00590000000Gt2K' limit 1];
list<applicationform__share> lstshare=new list<applicationform__share>();
applicationform__share objshare;
for(applicationform__c objs : obj){
objShare = new applicationform__share();
objshare.parentId=objs.id;
objshare.Accesslevel='Edit';
objshare.UserOrGroupId=u.id;
lstshare.add(objshare);
System.debug('Share object'+lstshare);

}

Database.insert(lstshare,false);
lstshare.clear();

}
global void finish(Database.batchableContext bc){
}

}