public with sharing class attcon {
     ApexPages.StandardController con;
    public attcon(ApexPages.StandardController controller) {
            con= controller;
    }
     public account acc{get;set;}
     public blob body{get; set;}
     public string filename{get; set;}
     public pagereference insertfile()
    {
    con.save();
    acc=(Account)Con.getrecord();
    Attachment att= new attachment();
        att.parentid=acc.id;
        att.Body =body;    
        att.Name =filename;
        att.ContentType = 'application/jpg';
        System.debug('-------------->att'+att);
        insert att;
    pagereference ref= new pagereference('/'+acc.id);
    return ref;
    } 

}