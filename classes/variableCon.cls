public class variableCon {
    Account contact;

    public Account getContact() {
       /* if (contact == null){                      
        contact = [select Name from Account where 
            id = :ApexPages.currentPage().getParameters().get('id')];
        } */
        
        Aservice.MyWebService obj= new Aservice.MyWebService();  
        obj.myWebMethod();
        
        return contact;
    }
}