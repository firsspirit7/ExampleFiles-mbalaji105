public class mytestcontroller{

    public String name { get; set; }

    public mytestcontroller() {

    }


    public mytestcontroller(ApexPages.StandardController controller) {
       clic=false;
    }
     
    public Boolean clic{get;set;}
 
}