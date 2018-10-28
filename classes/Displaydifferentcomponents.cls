public  class Displaydifferentcomponents {
    public List<ApexPage> lstapexpages{get;set;}
    public List<ApexClass> lstapexclass{get;set;}
    public List<ApexComponent> lstapexcomponent{get;set;}
    public List<User> lstuser{get;set;}
    public List<ApexTrigger> lsttrigger{get;set;}
    public boolean trigrender{get;set;}
    public boolean classrender{get;set;}
    public boolean vfpagerender{get;set;}
    public boolean vfcomponentrender{get;set;}
    public boolean userrender{get;set;}
    public string  showtype{get;set;}
    
    
    public Displaydifferentcomponents(){
            trigrender=false;
            classrender=false;
            vfpagerender=false;
            vfcomponentrender=false;
            userrender=false;           
            lsttrigger=[select id,name from Apextrigger];
            lstapexclass=[select id,name from Apexclass];
            lstapexpages=[select id,name,createddate from ApexPage order by name];
            lstapexcomponent=[select id,name from ApexComponent];
            lstuser=[select id,name from User];         
    }
    public void show(){
            if(showtype=='trigger'){
                trigrender=true;
                classrender=false;
                vfpagerender=false;
                vfcomponentrender=false;
                userrender=false;   
            }
            else if(showtype=='vfpage'){
                trigrender=false;
                classrender=false;
                vfpagerender=true;
                vfcomponentrender=false;
                userrender=false;   
            }
            else if(showtype=='vfcomponent'){
                trigrender=false;
                classrender=false;
                vfpagerender=false;
                vfcomponentrender=true;
                userrender=false;   
            }
            else if(showtype=='user'){
                trigrender=false;
                classrender=false;
                vfpagerender=false;
                vfcomponentrender=false;
                userrender=true;    
            }
            else if(showtype=='apexclass'){
                trigrender=false;
                classrender=true;
                vfpagerender=false;
                vfcomponentrender=false;
                userrender=false;   
            }
        
    }
        
}