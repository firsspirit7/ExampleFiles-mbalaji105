public class pdfcontroller {
Id Recid=ApexPages.currentPage().getParameters().get('Id');

public List<ApplicationForm__c>  lstapp {get;set;}
public pdfcontroller(){
    system.debug('test********'+Recid);
    lstapp=[select name,email__c,location__c,MobileNumber__c,color__c from  ApplicationForm__c where id=:Recid];
}
}