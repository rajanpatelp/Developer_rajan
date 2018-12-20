public class AccountHandler {

    public static Account insertNewAccount(String AccName)
    {
        Account acc = new Account(Name = AccName);
        
        try
        {
            insert acc;
            ID accId = acc.Id; 
            System.debug('New Account was created with Id= '+ accId + ' and Account Name = ' + acc.Name);
            return acc;
        }
        
        catch (DMLException e)
        {
            //return null;
            System.debug('Failed to create an Account with value '+ AccName);  
            return acc;
        }           
        
        
    }
}