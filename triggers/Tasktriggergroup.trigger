trigger Tasktriggergroup on Task (after update) {
	List<ID> ownids=new List<ID>();
	Set<string> gname=new Set<string>();
	List<String> gnamelst=new List<string>();
for(Task tsk:[select ownerid,Close_All_Tasks_when_One_Complete__c from task where ownerid in : Trigger.newmap.keyset()]){
    if(tsk.Close_All_Tasks_when_One_Complete__c==true){
    	ownids.add(tsk.ownerid);
    }
}
for(Groupmember gmember:[select userorgroupid,group.name from groupmember where userorgroupid in : ownids]){
	 if(gmember.group.name!=null){
	 	   gname.add(gmember.group.name);
	 	   
	 }
	 if(gname!=null){
	 	
	 	gnamelst.addAll(gname);
	 }
}
}