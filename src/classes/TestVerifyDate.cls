@isTest
public class TestVerifyDate {

    @isTest static void TestWithin30Days() 
    {
        date dL30Days = VerifyDate.CheckDates(date.newInstance(2012, 01, 01), date.newInstance(2012, 1, 3));
        System.assertEquals( date.newInstance(2012, 1, 3), dL30Days);
    }
    
    @isTest static void TestOutside30Days() 
    {
        date dG30Days = VerifyDate.CheckDates(date.newInstance(2012, 01, 01), date.newInstance(2012, 2, 3));
        System.assertEquals( date.newInstance(2012, 1, 31), dG30Days);
    }
}