trigger leadDuplicatePreventer1 on Lead (before insert,before update) 
{
   //Map<String, Lead> leadMap = new Map<String, Lead>();
   for (Lead lead : System.Trigger.new)
    {
// Make sure we don't treat an email address that
// isn't changing during an update as a duplicate.
     if (lead.Email == null)
     {
// Make sure another new lead isn't also a duplicate
        lead.Email.addError('email address.required');
     } 
  }
}