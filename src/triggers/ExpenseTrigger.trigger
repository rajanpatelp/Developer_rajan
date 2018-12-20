trigger ExpenseTrigger on Expense__c (after insert, after update) {
    if(trigger.isAfter && (trigger.isInsert || trigger.isUpdate))
    {
    	AccountTriggerHandler.accountUpserter(trigger.new);
    }
}