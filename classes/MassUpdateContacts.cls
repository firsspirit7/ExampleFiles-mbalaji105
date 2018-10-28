public with sharing class MassUpdateContacts {
private static List<Contact> contactsToRemember = null;
	public static void rememberContactsForUpdate (List<Contact> contacts) {
		contactsToRemember = contacts;
	}
	public static List<Contact> getContactsForUpdate() {
		return contactsToRemember;
	}	
}