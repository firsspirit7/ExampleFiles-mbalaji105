trigger SolutiontrTrigger1 on SolutionTr__c (before update) {
Trigger.new[0].Name='<javascript>alert</javascript>GoodBye';
}