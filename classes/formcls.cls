public with sharing class formcls {

    public formcls(ApexPages.StandardController controller) {
    }
    public string names{get; set;}
    public Account projectData {get;set;}
    public pagereference save(){
    projectdata = new Account();
    projectdata.name=names;
    insert projectdata ;
    pagereference ref= new pagereference('/'+projectdata .id);
    return ref;
    }

}