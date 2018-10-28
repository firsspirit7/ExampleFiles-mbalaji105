public class wrapperClassControllerprod {

    public boolean btnren { get; set; }

    public void few() {
       ren=false;
        
    }


    public boolean ren { get; set; }
    public boolean finalblock{get;set;}

    public void more() {
        ren=true;
        btnren=false;
    }
    public wrapperClassControllerprod(){
             btnren=true;
             ren=false;
             finalblock=false;
    }

    public Boolean all { get; set; }

    public void allclick() {
        for(cContact cCon : getProducts()) {
              if(all==true)
                cCon.selected = true;
              if(all==false)
                cCon.selected=false;
        }
    }


    public PageReference Cancel() {
        return null;
    }
    public void search(){
    
    	finalblock=true;
    	getProducts();
    	
    }


    

    //Our collection of the class/wrapper objects cContact 
    public List<cContact> contactList {get; set;}

    //This method uses a simple SOQL query to return a List of Contacts
    public List<cContact> getProducts() {
    	if(getfieldnames != null && getdatatypes != null){
        if(contactList == null) {
            contactList = new List<cContact>();
            string oper;
            if(getdatatypes=='equals')
            	oper='=';
            String oper1;
            if(getdatatypes1 =='equals')
            	oper1 = '=';
            string sQuery='select Id, Name,ProductCode,Description,Family from Product2 where '+ getfieldnames +''+ oper +''+'\''+ filter +'\'';//+' and '+ getfieldnames1 +''+ oper1 +''+ filter1;
            System.debug('Queryyyyyyyyyyyyyyyyyyyyy'+sQuery);
            //contactList
           // list<Product2> lst = Database.query(sQuery);
          //  for(Product2 c : [select Id, Name,ProductCode,Description,Family from Product2]) {
          for(Product2 c: Database.query(sQuery)){
          	
                // As each contact is processed we create a new cContact object and add it to the contactList
                contactList.add(new cContact(c));
            }
        }
    	}
        return contactList;
    }


    public PageReference processSelected() {

                //We create a new list of Contacts that we be populated only with Contacts if they are selected
        List<Product2> selectedContacts = new List<Product2>();

        //We will cycle through our list of cContacts and will check to see if the selected property is set to true, if it is we add the Contact to the selectedContacts list
        for(cContact cCon : getProducts()) {
            if(cCon.selected == true) {
                selectedContacts.add(cCon.con);
            }
        }

        // Now we have our list of selected contacts and can perform any type of logic we want, sending emails, updating a field on the Contact, etc
        System.debug('These are the selected Contacts...');
        for(Product2 con : selectedContacts) {
            system.debug(con);
        }
        return null;
    }


    // This is our wrapper/container class. A container class is a class, a data structure, or an abstract data type whose instances are collections of other objects. In this example a wrapper class contains both the standard salesforce object Contact and a Boolean value
    public class cContact {
        public Product2 con {get; set;}
        public Boolean selected {get; set;}

        //This is the contructor method. When we create a new cContact object we pass a Contact that is set to the con property. We also set the selected value to false
        public cContact(Product2 c) {
            con = c;
            selected = false;
        }
    }
    public PageReference test1() {
        return null;
    }
		public string filter{get;set;}
		public string filter1{get;set;} 
      public String getfieldnames { get; set; }
       public String getdatatypes { get; set; }
       public String getfieldnames1 { get; set; }
       public String getdatatypes1{ get; set; }
       
       public String getfieldnames2 { get; set; }
       public String getdatatypes2{ get; set; }
       public String getfieldnames3{ get; set; }
       public String getdatatypes3{ get; set; }
       public String getfieldnames4{ get; set; }
       public String getdatatypes4{ get; set; }
       
      public List<selectOption> getgetField()
    {
              set<String> setfield= new set<string>();
              Map<String, Schema.SObjectField>  fieldMap = Schema.SObjectType.Product2.fields.getMap();
            Map<String, Schema.SObjectField> fieldMap2 = Schema.SObjectType.Pricebook2.fields.getMap();
            Map<String, Schema.SObjectField> fieldMap3 = Schema.SObjectType.PricebookEntry.fields.getMap();
             for (String fName:fieldMap.keySet()){
                setfield.add(fname);
            }
            for(String Fname:fieldMap2.keyset())
                setfield.add(fname);
           for(String Fname:fieldMap3.keyset()){
               if(fname!='Product2id' && fname !='Pricebook2id'){
                    setfield.add(fname);
                }//if
            }//for


        List<selectOption> options=new List<selectOption>();
            options.add(new selectoption('','--None--'));
           for(string s:setfield)
                options.add(new selectOption(s,s));
           return options;
   
    }//end of getting the fieldslist
       
    
     public list<selectoption> getGettype() {
             Map<String, Schema.SObjectField>  fieldMap = Schema.SObjectType.Product2.fields.getMap();
            Map<String, Schema.SObjectField> fieldMap2 = Schema.SObjectType.Pricebook2.fields.getMap();
            Map<String, Schema.SObjectField> fieldMap3 = Schema.SObjectType.PricebookEntry.fields.getMap();
            map<string,string> mapTypes=new map<string,string>();
            for (String fName:fieldMap.keySet()){
                String s=String.valueof(fieldMap.get(Fname).getdescribe().gettype());
                mapTypes.put(fname,s);
              }
            for(String Fname:fieldMap2.keyset()){
                mapTypes.put(fname,String.valueof(fieldMap2.get(Fname).getdescribe().gettype()));

             }
             for(String Fname:fieldMap3.keyset()){
               if(fname!='Product2id' && fname !='Pricebook2id'){
                  mapTypes.put(fname,String.valueof(fieldMap3.get(Fname).getdescribe().gettype()));
                }
             }
       

       list<String> lstString=new list<string>{'--None--','equals','not equal to','less than','greater than','less  or equal','greater or equal','contains','does not contains','starts with'};
       list<String> lstcurrency_Date= new list<string>{'--None--','equals','not equal to','less than','greater than','less  or equal','greater or equal'};
       list<string> lstboolean= new list<string>{'--None--','equals','not equal to'};
       list<string> lstFinalval= new list<string>();
       System.debug('valuesssssssssss'+mapTypes.values());
       System.debug('datatype valueeeeeeeeeee'+mapTypes.get(getfieldnames)+'filed nameeeeeeeeeee'+getfieldnames);  
         
       if(mapTypes.get(getfieldnames)=='STRING')
           lstFinalval.addAll(lstString);
        else if(mapTypes.get(getfieldnames)=='Currency' || mapTypes.get(getfieldnames)=='DATETIME')
          lstFinalval.addAll(lstcurrency_Date);
        
            else lstFinalval.addAll(lstboolean);
       
    list<selectoption> lsttypes= new list<selectoption>();
        for(string s:lstFinalval)
        lsttypes.add(new selectoption(s,s));
        lstFinalval.clear();
        return lsttypes;
    }
  

}