@isTest
private class testonopportunityactivitycount{
 public static  Boolean didRun=true;
 static testMethod void testCountTask() {
        //Setup
    
        Account a = new Account(name='Test');
        insert a;

        Opportunity opp = new Opportunity(accountId = a.id, name='Test Opp', StageName='New', CloseDate=System.today());
        insert opp;

        //Insert our first task
        Task t = new Task(subject='Test Activity', whatId = opp.id);
        insert t;

        //Verify count
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(1,opp.activity_count__c);

        //Disconnect task from the opportunity
        didRun = false; //Reset
        t.whatId = null;
        update t;
        //Verify count = 0
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(0,opp.activity_count__c);

       didRun = false; //Reset
        //Add an event
        Event e = new Event(subject='Test Event', whatId = opp.id, startDateTime = System.Now(), endDateTime = System.now());
        insert e;

        //Verify count = 1
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(1,opp.activity_count__c);

        //Relink the task to the opportunity
        didRun = false; //Reset
        t.whatId = opp.id;
        update t;

        //Verify count = 2
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(2,opp.activity_count__c);

        //Disconnect the event from the opportunity
        didRun = false; //Reset
        e.whatId = null;
        update e;

        //Verify count is back down to 1
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(1,opp.activity_count__c);

        //Delete the task
        didRun = false; //reset
        delete t;
        //Verify count is back down to 0
        opp = [SELECT ID, activity_count__c FROM Opportunity WHERE ID = :opp.id];
        System.assertEquals(0,opp.activity_count__c);

    }
}