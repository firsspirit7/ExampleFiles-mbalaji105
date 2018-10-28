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
private class TestEmploy1 {

    static testMethod void myUnitTest() {
        // TO DO: implement unit test
        Employ1 e=new Employ1();
        Employ__c e1=new Employ__c();
        
        List<Employ__c> emplst;
    }
    
  
      /*public PageReference save() {
        table2=false;
        table1=true;
        update emplst;
        //update con;
        return null;
    }


    public boolean getTable2() {
        return Table2;
    }


 boolean Table1=true;
 boolean Table2=false;
 public boolean gettable1(){
 return table1;
 }
 

    public PageReference edit() {
        table1=false;
        table2=true;
        return null;
    }
    List<Employ__c> emplst;
    public List<Employ__c> getemplst(){
        emplst=[select name,id,phone__c,Email__c from Employ__c];
        return emplst;
   }


  }
        
        
    */
}