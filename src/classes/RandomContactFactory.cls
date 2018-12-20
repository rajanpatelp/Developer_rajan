public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numofContacts, String lastName)
    {
        List<Contact> con = new List<Contact>();
        
        for (integer i = 0; i <numofContacts; i++)
        {
            Contact newContact = new Contact(LastName = lastName + i, FirstName = lastName + i );
            con.add(newContact);
        }
        
        return con;
    }
}