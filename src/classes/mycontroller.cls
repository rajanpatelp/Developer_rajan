public class mycontroller {

    public Account account{get;set;}
    public List<Account> acc{get;set;}
    
    //List<account> acc;
    public mycontroller()
    {
        account = [Select Id,Name from Account where Id=:ApexPages.CurrentPage().GetParameters().get('id')];
        acc = [Select Id,Name,Rating from Account];
    }
    public PageReference save() {
        return null;
    }

}