trigger triggeronleadtoavoiddelete on Account (before delete) {
Map<String, Account> leadMap = new Map<String, Account>();
for(Account acc:Trigger.old){
	if(acc.Name!=null && (acc.Name=='raju' || acc.Name=='arv'))
	{
	  acc.Name.addError('You cannot delete this account');
	
	}
}
}