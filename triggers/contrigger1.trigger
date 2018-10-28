trigger contrigger1 on Contact (before insert,before update) {
Contact c=Trigger.new[0];
email e=new email();
if(c.lastname=='balaji'){

email.sendmail(c.email);

}



}