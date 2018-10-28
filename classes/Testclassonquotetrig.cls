/**
 * This class contains unit tests for validating the behavior of Apex classes
 * and triggers.
 *
 * Unit tests are class methods that verify whether a particular piece
 * of code is working properly. Unit test methods take no arguments,
 * commit no data to the database, and are flagged with the testMethod
 * keyword in the method definition.
 *
 * All test methods in an organization are executed whenever Apex code is deployed
 * to a production organization to confirm correctness, ensure code
 * coverage, and prevent regressions. All Apex classes are
 * required to have at least 75% code coverage in order to be deployed
 * to a production organization. In addition, all triggers must have some code coverage.
 * 
 * The @isTest class annotation indicates this class only contains test
 * methods. Classes defined with the @isTest annotation do not count against
 * the organization size limit for all Apex scripts.
 *
 * See the Apex Language Reference for more information about Testing and Code Coverage.
 */
@isTest
private class Testclassonquotetrig {

	    static testMethod void myUnitTest() {
	        // TO DO: implement unit test
	        boolean isupdate=false;
	        opportunity opp=new opportunity(name='Monitors',closedate=system.today(),StageName='prospecting');
	        insert opp;
	        Quote obj=new Quote(name='keyboard',primary__c=true,opportunityid=opp.id);
	        insert obj;
	        list<quote> lstquote = [select id ,primary__c from Quote where primary__c=true];
	        update lstquote;
	    }
	    static testMethod void myUnitTest1() {
	    	 boolean isupdate=false;
	    	  opportunity opp=new opportunity(name='Monitors',closedate=system.today(),StageName='prospecting');
	        insert opp;
	        Quote obj=new Quote(name='keyboard',primary__c=false,opportunityid=opp.id);
	        insert obj;
	        list<quote> lstquote = [select id ,primary__c from Quote where primary__c=true];
	        update lstquote;
	    }
}