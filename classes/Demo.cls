global class Demo 
{

    global String getEid() {
        return sId;
    }


    String status = 'false';
    global String getstatus()
    {
        return status;
    }
    
    String sName,sEmail,srole,sId;
    global String renderEmp { get; set; }

    global PageReference get() 
    {
        sId=emps;
        system.debug('@@@@@@@@'+sId);
        if(emps!=null)
        {
        status = 'true';        
        Emp_Details__c Obj = [select name,Email__c,role__c from Emp_Details__c where id=:emps];
        sName=Obj.name;
        sEmail=Obj.Email__c;
        sRole=Obj.role__c;
        
        }
     
        return null;
    }


    global String Emps { get; set; }

    global String Dept { get; set; }
    
    global List<SelectOption> getDeptName() 
    {
           List<SelectOption> selectOption=new List<SelectOption>();
           selectOption.add(new SelectOption('','--Select--')); 
           for(Depart_ment__c ObjDept:[select id,Depart_name__c  from Depart_ment__c order by name])
           {
               selectOption.add(new SelectOption(ObjDept.id,ObjDept.Depart_name__c));
           }
        return selectOption;
    }
    
    global List<SelectOption> getEmpName() 
    {
        List<SelectOption> selectEmps=new List<SelectOption>();
        selectEmps.add(new SelectOption('','--Select--'));
        
        if(Dept!=null)
        {
        for(Emp_Details__c ObjEmp : [select id,name from Emp_Details__c ObjEmp where ObjEmp.Depart_ment__c=:Dept])
        {
            selectEmps.add(new SelectOption(ObjEmp.id,ObjEmp.name));
        }
        return selectEmps;
        }
        return selectEmps;
    }

    
}