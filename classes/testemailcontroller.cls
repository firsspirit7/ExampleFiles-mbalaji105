public class testemailcontroller {

    public List<testemail__c> getRecs() {
      List<testemail__c> recs=[select name,email__c,position__c from testemail__c];
       return recs;
      }
       

}