public class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(string searchterm)
    {
        List<List<SObject>> searchlist = [FIND :searchterm in NAME FIELDS returning Contact, Lead];
        system.debug(searchlist);
        return searchlist;
    }
}