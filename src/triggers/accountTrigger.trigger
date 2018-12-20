trigger accountTrigger on Account (after update) {
    if(trigger.isAfter && trigger.isUpdate)
    {
    	account_Methods.updateAccounts(trigger.new, trigger.old);
    }
}