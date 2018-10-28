public with sharing class Employ{

    public String emp { get; set; }
  
  public PageReference save() {
        table2=false;
        table1=true;
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
  }