public class addrowCon
{ 
    public addrowCon(ApexPages.StandardSetController controller) {

    }


  public integer num { get; set; }
  public List<EmployeeDetail__c> accts {get; set;} 
  public addrowCon()
  {
     accts = new List<EmployeeDetail__c>(); 
     accts.add(new EmployeeDetail__c());    
  }
   public PageReference add_rows() {
    for(integer i=0;i<num ;i++)
        {
          accts.add(new EmployeeDetail__c());    
        }
        
        return null;
     }
  public PageReference save_close()
  {       insert accts;
     PageReference home = new PageReference('/home/home.jsp');
     home.setRedirect(true);
     return home;
  }
}