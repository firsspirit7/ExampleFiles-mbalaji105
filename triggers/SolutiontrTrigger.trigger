trigger SolutiontrTrigger on SolutionTr__c (before insert) {
	Trigger.new[0].Note__c ='<h1>hello</h1>';

}