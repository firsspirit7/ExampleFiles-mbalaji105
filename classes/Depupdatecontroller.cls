public with sharing class Depupdatecontroller {

   // public String dep { get; set; }

    

    public String sid { get; set; }

    public String country { get; set; }

    public Double noemp { get; set; }
    public String name1 { get; set; }
  
    public PageReference recSave()
  {
     if(sid!=null && sid != '' )
       {
           Departmentupdate__c dep=[select Name,NoofEmployees__c,Country__c from Departmentupdate__c where id=:sid]; 

              if(dep != null)
              {
               dep.name = name1;
               dep.NoofEmployees__c=noemp;
               dep.Country__c=country;
              }
           upsert dep;

         }
    else 
       {
         Departmentupdate__c dep= new Departmentupdate__c(Name=name1,NoofEmployees__c=noemp,Country__c=country);       
         upsert dep; 
       }
   return null; 
   }

   
    public String getName() {
        return null;
    }
public List<Departmentupdate__c> recs;
public List<Departmentupdate__c> getrecs()
{
  recs=[select id,Name,NoofEmployees__c,Country__c from Departmentupdate__c];
  return recs;

}
   public PageReference mylst()
      {
         List<Departmentupdate__c> mylst;
         mylst=[select Name,NoofEmployees__c,Country__c from Departmentupdate__c where id=:sid];
         name1=mylst.get(0).Name;
         noemp=mylst.get(0).NoofEmployees__c;
         country=mylst.get(0).country__c;
         return null;
       }   
  
}