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
private class TestTestController1 {

    static testMethod void myUnitTest() {
        // TO DO: implement unit test
        //PageReference pageRef = Page.EmpdetailController2;
        //String nextPage = tc.mylst().getUrl();
        // ApexPages.currentPage().getParameters().put('qp', 'yyyy');
        //Test.setCurrentPage(pageRef);
        TestController1 dc=new TestController1();
        
        Departments__c tc=new Departments__c();
        tc.Name='balaji';
        tc.Countries__c='USA';
        tc.No_of_Employees__c=40;
        insert tc;
        dc.sid=tc.id;
        dc.recSave();
        dc.geta();
        dc.mylst();
        
    }
    static testMethod void myUnitTest123() {
        // TO DO: implement unit test
        //PageReference pageRef = Page.EmpdetailController2;
        //String nextPage = tc.mylst().getUrl();
        // ApexPages.currentPage().getParameters().put('qp', 'yyyy');
        //Test.setCurrentPage(pageRef);
        TestController1 dc=new TestController1();
        
        Departments__c tc=new Departments__c();
        tc.Name='balaji';
        tc.Countries__c='USA';
        tc.No_of_Employees__c=40;
        insert tc;
        //dc.sid=tc.id;
        dc.recSave();
        dc.geta();
        dc.mylst();
        
    }
}