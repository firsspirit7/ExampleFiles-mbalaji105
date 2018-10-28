public class Opportunitycontroller {
Public list<opportunity>  lstOpp{set;get;}
public List<opportunity> getopprecs(){
 lstopp=[select name,StageName,closedate from opportunity];
 return lstopp;
}

}