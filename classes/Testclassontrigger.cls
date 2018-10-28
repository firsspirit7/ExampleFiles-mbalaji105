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

public class Testclassontrigger {

    static testMethod void myUnitTest() {
    	
    	opportunity opp=new opportunity();
    	
    	opp.StageName='Prospecting';
    	opp.Name='balu';
    	
    	//opp.name='Balu';
    	opp.CloseDate=system.today();
    	insert opp;
    	/*quotelineitem ql=new quotelineitem();
    	quote qut=new quote();
    	insert qut;*/
    	
    	//task t=new task();
    	
    	OpportunityLineItem oli=new OpportunityLineItem();
    	oli.Quantity=12;
    	oli.UnitPrice=14;
    	insert oli;
    	quotelineitem qli=new quotelineitem();
    	qli.QuoteId='quote1';
    	insert qli;
    	Task tsk=new Task();
    	tsk.OwnerId='balaji malemarpuram';
    	tsk.Priority='low';
    	tsk.Status='completed';
    	tsk.Subject='email';
    	insert tsk;
    	//oli.Name='balm';
    	/*if(opp.StageName=='Closed Won'){
    		try{
    			qut.name='balaji';
    			insert 	qut;
    		}
    		catch(Exception e){
    		System.assert( e.getMessage().contains('Insert failed. First exception on ' +
                'row 0; first error: FIELD_CUSTOM_VALIDATION_EXCEPTION, ' +
                'Mileage request exceeds daily limit(500): [Miles__c]'), 
                e.getMessage() );
                system.debug('==='+e.getMessage());
                  
    		}
    		
    	}
    	else
    	{
    	  qut.name='balu';
    	  insert qut;
    	
    	}*/
    	//opportunity t=[select stagename from Opportunity where id =00690000003Y187];
    	//system.assert(t!=null);
        // TO DO: implement unit test
    }
}