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
private class Testclassonqlitem {
    
    static testMethod void myUnitTest() {
        // TO DO: implement unit test
       list<opportunity> oppl=new list<opportunity>();
       opportunity opp=new opportunity(name='toy',stagename='prospecting',closedate=system.today());
       insert opp;
       Pricebook2 pbook = [select id from Pricebook2 where IsStandard = true limit 1];

       quote qt=new quote(name='babi',primary__c=true,opportunityid=opp.id,Pricebook2Id=pbook.id);
     
       insert qt;

       product2 pro=new product2(name='mouse');
       insert pro;
       
       PricebookEntry pe = new PricebookEntry(Pricebook2Id = pbook.Id, Product2Id = pro.Id, UnitPrice = 10000, IsActive = true, UseStandardPrice = false);
       insert pe;
       
       quotelineitem qli=new quotelineitem(quantity=2,PricebookEntryId=pe.id,quoteid=qt.id,unitprice=1000);
       insert qli;
       
       if(qt.Primary__c){
         opp.amount=qt.totalprice;
         //update opp;
       }
              
        	oppl.add(opp);
        update oppl;
       
        
        }
      
      
            
            
    }