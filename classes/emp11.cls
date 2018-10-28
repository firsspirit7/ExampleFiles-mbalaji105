public class emp11
{
List<EmployeeDetail__c> emp;
    public List<EmployeeDetail__c> getAccounts()
        {

                if(emp == null) 
                emp = [select Name, Department__c,Email__c,Phone__c,Salary__c from EmployeeDetail__c limit 10];
                System.debug(emp);
                return emp;

        }  
}