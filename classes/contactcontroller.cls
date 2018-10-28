public class contactcontroller {
List<opportunity> lst{get;set;}
public  List<opportunity> getrecs(){

lst=[select name,stagename,closedate from opportunity limit 10];
return lst;
}
}