@istest
public class TestRestrictContactByName {

    @istest static void invalidname()
    {
        Contact con = new Contact(LastName = 'INVALIDNAME');
        Test.startTest();
        insert con;
        test.stopTest();
        //Test.startTest();
        //Database.insert(List<Contact> sobjects)
           
    }
    
    @istest static void validname()
    {
        Contact con = new Contact(LastName = 'ValidName');
        Test.startTest();
        insert con;
        test.stopTest();
    }
    
    @istest static void nullname()
    {
        Contact con = new Contact(LastName = '');
        Test.startTest();
        insert con;
        test.stopTest();
    }
}