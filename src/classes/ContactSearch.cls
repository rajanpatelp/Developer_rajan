public class ContactSearch {

    public static List<Contact> searchForContacts(string LName, string ZCode)
    {
        List<Contact> con = new List<Contact>([Select id,firstname,lastname from contact where lastname = :Lname and mailingpostalcode = :Zcode]);
        System.debug(con);
        return con;
    }
}