public class collegecontroller {

    public integer strength { get; set; }

    public String location { get; set; }

    public String name { get; set; }

    public PageReference save() {
        College__c clg=new College__c(Name=name,location__c=location,strength__c=strength);
        insert clg;
        return null;
    }

}