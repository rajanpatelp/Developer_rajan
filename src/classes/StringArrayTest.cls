public class StringArrayTest {
	
    public static List<String> generateStringArray(integer len)
    {
        List<String> All = new List<String>();
        integer i = 0;
        //String temp;
        while (i<len)
        {
            //temp = "Test" + i;
            All.add('Test ' + i);
            i++;
        }
        //printresults(List<String> all);
        System.debug(all);
        return all;
    }
    
    /*public string printresults(List<String> all)
    {
        for (String a:all)
        {
            System.debug(all);
        }
    }*/
}