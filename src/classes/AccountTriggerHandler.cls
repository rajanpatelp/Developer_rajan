public with sharing class AccountTriggerHandler {
    
    public static void accountUpserter(List<Expense__c> newitems)
    {
    	Set<Id> a = new Set<Id>();
    	for (Expense__c e: newitems)
    	{    		
    		a.add(e.account__c);
    	}
    	
    	if (!a.isEmpty())
    	{
    		account_Methods.updateTotalExpenseValuesonAccount(a);
    	}
    	//update a;
    }
}