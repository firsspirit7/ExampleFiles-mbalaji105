global class rowExpanderCls {

    public PageReference fetch() {
        lstcon=[Select id, name, phone from contact where accountId=:recordId];
        System.debug('------------lstcon-------------------'+lstcon);
      
        return null;
    }

        @RemoteAction
        global static String getUserData(String recordId){
            List<Contact> lstcon=[Select id, name, phone from contact where accountId=:recordId];
            System.debug('------------lstcon-------------------'+lstcon);
            String JSONString = JSON.serialize(lstcon);
            //Depends on your needs and way you want to format your result. Lets just hardcode the status value for now.
            return '{"Records":' +JSONString+', "error": "null", "status":"SUCCESS"}';
         }
         
         
         @RemoteAction
        global static String check(){
            return 'hello';
        }
// public List<Contact> lstcon;
 public string recordId{get; set;}
 
@RemoteAction
global static String getContacts(string id){
    System.debug('---------->'+id);
    return id;
} 

public List<Contact> lstcon{get; set;}

 public class wrapper{
     
     public boolean has_leaf{get; set;}
     public Account acc{get; set;}
     
     public wrapper(boolean b, Account a){
         has_leaf = b;
         acc= a;
     }
 
 }

 public List<wrapper> lstwrap{get; set;}
 public rowExpanderCls(){
         recordId='';
         lstcon = new List<Contact>();
         List<Account> lst =[Select id,name, phone ,(Select id, name from Contacts) from Account];
         lstwrap = new List<wrapper>();
         lstcon = [Select id, name, phone from contact];
         for(Account a:lst){
             if(a.contacts.size()>0)
             lstwrap.add(new wrapper(false, a));
             else
             lstwrap.add(new wrapper(true, a));
         }
 }
 
 

}