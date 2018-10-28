public with sharing class Employ1{
    
    //public String emp{ get; set; }

    public PageReference mylst() {
        return null;
    }


   // public String emplst { get; set; }

  
      public PageReference save() {
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