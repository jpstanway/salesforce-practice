public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String ln) {
        List<Contact> contacts = new List<Contact>();
        
        for(Integer i=0;i<numContacts;i++) {
            Contact c = new Contact(FirstName='Testman' + i, LastName=ln);
            contacts.add(c);
        }
        
        return contacts;
    }
}