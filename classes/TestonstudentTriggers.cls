@isTest

private class TestonstudentTriggers {

 
    static testMethod void myUnitTest() {
        Student__c s = new Student__c();

        s.Name = 'Om Test';

        s.Lastname__c = 'LastName';
        s.Installment__c = 2000;
        s.Email__c = 'admin@shivasoft.in';
        
        
        try
        {

            insert s;

        }

        catch(System.DMLException e)

        {

            System.assert(e.getMessage().contains('Record already exist with same email Id'));

        }
       
    }

}