/*  Author          : Ahlada
    Date            : 30th Mar 2012
    Trigger name    : SendEmail  
    Reference       :   
    Description     : To send Email to the Owner of the Event if it is updated by
                      other than the Event Owner,and when ever Event is created 
                      by other than the logged in user.
    Modification History :                    
 */
trigger SendEmail on Event (after update,after insert){
    //Global Variable Declaration
    list<User> lstUsers =[select id,email from User];
    Map<id,String> mapEmails = new Map<id,String>();
    String Activitydate='';
    String Activitydatetime=''; 
    String Enddate ='';
    String Enddatetime='';
    String Location='';
    String Type='';
    String Description='';
    list<Messaging.SingleEmailMessage> lstEmails = new list<Messaging.SingleEmailMessage>();
    Messaging.SingleEmailMessage mail1;
    
    //Preparing Map to get the User id and Usr Email
    for(User objUser:lstUsers){
        mapEmails.put(objUser.id,objUser.email);
    }
    //To get the logged in User id.
    User usrid =[select id from User where id=:Userinfo.getUserId()];
    
    if(trigger.isInsert){
        for(Event objEvent:trigger.new){
            Activitydate='';
            Activitydatetime='';
            Enddate ='';
            Enddatetime='';
            Location='';
            Type='';
            Description='';
            //If Event Owner is not the same as the Owner of the Event
            if(objEvent.CreatedbyId != objEvent.ownerid){
                  mail1=new Messaging.SingleEmailMessage();
                   String Email = mapEmails.get(objEvent.ownerid);  
                   String[] toAddresses =new String[]{Email};
                   Mail1.setToAddresses(toAddresses);
                   Mail1.setSubject('Calender Event Created');
                   Mail1.setBccSender(false);
                   Mail1.setUseSignature(True);
                   //if(objEvent.ActivityDateTime!= null)
                   //Activitydate = objEvent.ActivityDateTime.format('yyyy/MM/dd');//actdate.format('yyyy/MM/dd');
                   //if(objEvent.ActivityDateTime!= null)
                   //Activitydatetime = objEvent.ActivityDateTime.format('hh:mm:ss a');
                   Activitydate = objEvent.StartDateTime.format('yyyy/MM/dd');
                   Activitydatetime = objEvent.StartDateTime.format('hh:mm:ss a');
                   Enddate = objEvent.EndDateTime.format('yyyy/MM/dd');
                   Enddatetime = objEvent.EndDateTime.format('hh:mm:ss a');
                   if(objEvent.Location!= null) 
                   Location= objEvent.Location;
                   if(objEvent.Type!= null)
                   Type = objEvent.Type;
                   if(objEvent.Description!= null)
                    Description= objEvent.Description;                                       
                   Mail1.setPlainTextBody('Event Name :'+objEvent.subject+'\n'+'Start Date :'+Activitydate+'\n'+'Start Time :'+Activitydatetime+'\n'+'End Date :'+Enddate+'\n End Time :'+EndDateTime+'\n'+'Type :'+Type+'\n'+'Location :'+Location+'\n'+'Description :'+Description);
                   lstEmails.add(Mail1);
                   system.debug('%^$%$%'+objEvent.id);
            } 
        }
    }
    
if(trigger.isUpdate){
    for(Event objEvent:trigger.new){
        Activitydate='';
        Activitydatetime='';
        Enddate ='';
        Enddatetime='';
        Location='';
        Type='';
        Description='';
        //If Event Owner is not the same as LastmodifiedUser 
            if(objEvent.OwnerId != objEvent.lastmodifiedbyid){
            system.debug('%$%$'+mapEmails.get(objEvent.Ownerid));
                  mail1=new Messaging.SingleEmailMessage();
                   String Email = mapEmails.get(objEvent.Ownerid);  
                   String[] toAddresses =new String[]{Email};
                   Mail1.setToAddresses(toAddresses);
                   Mail1.setSubject('Calender Event Updated');
                   Mail1.setBccSender(false);
                   Mail1.setUseSignature(True);
                   Datetime actdate = datetime.newinstance(objEvent.ActivityDate.year(),objEvent.ActivityDate.month(),objEvent.ActivityDate.day());
                   //if(objEvent.ActivityDateTime!= null)
                   //Activitydate = objEvent.ActivityDateTime.format('yyyy/MM/dd');//actdate.format('yyyy/MM/dd');
                   //if(objEvent.ActivityDateTime!= null)
                   //Activitydatetime = objEvent.ActivityDateTime.format('hh:mm:ss a');
                   Activitydate = objEvent.StartDateTime.format('yyyy/MM/dd');
                   Activitydatetime = objEvent.StartDateTime.format('hh:mm:ss a');
                   Enddate = objEvent.EndDateTime.format('yyyy/MM/dd');
                   Enddatetime = objEvent.EndDateTime.format('hh:mm:ss a');
                   if(objEvent.Location!= null) 
                   Location= objEvent.Location;
                   if(objEvent.Type!= null)
                   Type = objEvent.Type;
                   if(objEvent.Description!= null)
                    Description= objEvent.Description;                                               
                   Mail1.setPlainTextBody('Event Name :'+objEvent.subject+'\n'+'Start Date :'+Activitydate+'\n'+'Start Time :'+Activitydatetime+'\n'+'End Date :'+Enddate+'\n End Time :'+EndDateTime+'\n'+'Type :'+Type+'\n'+'Location :'+Location+'\n'+'Description :'+Description);
                   lstEmails.add(Mail1);
            }
        }
        //Messaging.sendEmailre(new  Messaging.SingleEmailMessage[] {Mail1});
    }
    //Sending the list of Messages as Mails
    system.debug('786786787'+lstEmails);  
    Messaging.sendEmailresult[] objResult = messaging.sendemail(lstEmails);    
}