/*  Author          : Ahlada
    Date            : 2nd Apr 2012
    Class name      : TestSendEmail  
    Reference       :   
    Description     : Test Class for SendEmail Trigger
    Modification History :                    
 */
@isTest
private class TestSendEmail {
    static testMethod void TestEmail() {
    Profile objProfile =[select id from profile where name='Standard User'];
    User objUser =new User(lastname='EE',email='z@gmail.com',alias = 'standt',emailencodingkey='UTF-8',
     languagelocalekey='en_US',localesidkey='en_US', profileid = objProfile.Id,
     timezonesidkey='America/Los_Angeles',CommunityNickName='xx',username='kxj@test.com');
     insert objUser;
     Event objEvent = new Event();
     objEvent.OwnerId = objUser.id; 
     objEvent.ActivityDate = system.today();
     objEvent.ActivityDateTime = system.now();
     objEvent.DurationInMinutes = 30;
     insert objEvent;     
     update objEvent;
    }
}