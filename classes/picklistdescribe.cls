public class picklistdescribe{

    public String industry1 { get; set; }

public List<SelectOption> getIndustry()
{
  List<SelectOption> options = new List<SelectOption>();
        
   Schema.DescribeFieldResult fieldResult =Account.Industry.getDescribe();
   List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
        
   for( Schema.PicklistEntry f : ple)
   {
      options.add(new SelectOption(f.getLabel(), f.getValue()));
   }       
   return options;
}

public String val {get;set;}
  public List<SelectOption> getName(){

    List<Schema.SObjectType> gd = Schema.getGlobalDescribe().Values();    

    List<SelectOption> options = new List<SelectOption>();

     

    for(Schema.SObjectType f : gd){

       options.add(new SelectOption(f.getDescribe().getLabel(),f.getDescribe().getLabel()));

    }

    return options;//https://balaji-developer-edition--c.ap1.visual.force.com/apex/Piclistvaluepage#
   }
public List<SelectOption> getFields(){
List<SelectOption> options = new List<SelectOption>();
Schema.DescribeFieldResult Fieldlst =Schema.SObjectType.Account.fields.Name; 
return null;
}


}