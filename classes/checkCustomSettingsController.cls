public with sharing class checkCustomSettingsController { 
    public checkCustomSettingsController() {
        getRecords();
    }
    
    public List<Account> lst {get;set;}   
        
    /*public checkCustomSettingsController(ApexPages.StandardController controller) { 
            getRecords();
    }*/
    
    public void getRecords(){
        
        lst = new List<Account>(); 
        
          List <Account> lstAccount = [Select Type, Site, Phone, Name, Fax From Account]; 
        
        Integer iCount = 0; 
        
        List<UnmanagedTest__c> CS = [select Name,Count__c  From UnmanagedTest__c]; 
        
        if(CS != null && CS.size()>0){
                iCount = integer.valueOf(CS[0].Count__c);
        }
        system.debug('Count of Records----' + iCount);
            
        system.debug('-----' + cs);
        
        Integer iRowCount = 0; 
        for(Account obj : lstAccount){

            if(iRowCount <iCount)
                lst.add(obj); 
                
            iRowCount++; 
        }
                 
        
    }


}