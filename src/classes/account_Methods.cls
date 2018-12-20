public with sharing class account_Methods {
        public static void updateAccounts(List<Account> newitem, List<Account> olditem)
    {
    	Set<Id> aId = new Set<Id>();
    	for(integer i = 0; i<newitem.size(); i++)
    	{
    		if(newitem[i].Total_Calculate_Expenses__c != olditem[i].Total_Calculate_Expenses__c)
    		{
    			aId.add(newitem[i].Id);
    		}
    	}
    	
    	if(!aId.isEmpty())
    	{ 
    		updateTotalExpenseValuesonAccount(aId);
    	}
    }
    
    public static void updateTotalExpenseValuesonAccount(Set<Id> accountIds)
    {
    	for(Id a : accountIds)
    	{
    		List<AggregateResult> arlist = [Select sum(TotalPrice__c), Account__c from Expense__c where Account__c IN :accountIds  group by Account__c];
    		
    		for(AggregateResult ar : arlist)
    		{
    			Account acc = new Account(Id = string.valueof(ar.get('Account__c')));
    			acc.Total_Calculate_Expenses__c = Double.valueOf(ar.get('expr0'));
    		}
    		
    	}
    }
}