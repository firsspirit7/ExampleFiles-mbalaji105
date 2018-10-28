public with sharing class Mapexample {
	public static void fun(){
		Map<Id, Account> entries = new Map<Id, Account>(
[select name from Account]);
system.debug('========'+entries);
	}

}