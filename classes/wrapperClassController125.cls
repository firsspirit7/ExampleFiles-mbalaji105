public class wrapperClassController125 
{
   //Our collection of the class/wrapper objects cContact
   public List<wraper1> ContactList {get; set;}
    //This method uses a simple SOQL query to return a List of Contacts
    public List<wraper1> getContacts() 
    {
        if(contactList == null) {
            contactList = new List<wraper1>();
            for(Merchandise__c c : [select Id, Name from Merchandise__c ]) {
                // As each contact is processed we create a new cContact object and add it to the contactList
                contactList.add(new wraper1(c));
            }
        }
        return contactList;
    }
 
    public pagereference del() 
        {
            //We create a new list of Contacts that we be populated only with Contacts if they are selected
            List<Merchandise__c> selectedContacts = new List<Merchandise__c>();
            //We will cycle through our list of cContacts and will check to see if the selected property is set to true, if it is we add the Contact to the selectedContacts list
                for(wraper1 cCon : contactList) 
                {
                    if(cCon.selected == true) 
                    {
                        selectedContacts.add(cCon.con);
                       
                    }
                }
                delete selectedContacts;
            
            // Now we have our list of selected contacts and can perform any type of logic we want, sending emails, updating a field on the Contact, etc
            //System.debug('These are the selected Contacts...');
           
            for(Merchandise__c con : selectedContacts) {
            system.debug('These are the selected Contacts****************'+con);
           
            }
            pagereference ref=page.wtest1;
            ref.setredirect(true);
            return ref;
        }
 
 
 // This is our wrapper/container class. A container class is a class, a data structure, 
     //or an abstract data type whose instances are collections of other objects. 
     //In this example a wrapper class contains both the standard salesforce object Contact and a Boolean value
     public pagereference insert1() 
        {
            //We create a new list of Contacts that we be populated only with Contacts if they are selected
            List<Merchandise__c> selectedContacts = new List<Merchandise__c>();
            //We will cycle through our list of cContacts and will check to see if the selected property is set to true, if it is we add the Contact to the selectedContacts list
                for(wraper1 cCon : contactList) 
                {
                    if(cCon.selected == true) 
                    {
                        selectedContacts.add(cCon.con);
                       
                    }
                }
                upsert selectedContacts;
            
            // Now we have our list of selected contacts and can perform any type of logic we want, sending emails, updating a field on the Contact, etc
            //System.debug('These are the selected Contacts...');
           
            for(Merchandise__c con : selectedContacts) {
            system.debug('These are the selected Contacts****************'+con);
           
            }
            pagereference ref=page.wtest1;
            ref.setredirect(true);
            return ref;
        }
 
 
    public class wraper1
    {
        public Merchandise__c con {get; set;}
        public Boolean selected {get; set;}
        //This is the contructor method. When we create a new cContact object we pass a Contact that is set to the con property. We also set the selected value to false
 
        public wraper1(Merchandise__c c) 
        {
            con = c;
            selected = false;
        }
    }
}