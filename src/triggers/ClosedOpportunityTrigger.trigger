trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> oppList= new List<Task>();
    
    for(opportunity o : [Select id,name, stagename from opportunity where id in :Trigger.new])
    {
        if (o.StageName == 'Closed Won')
        {
            oppList.add(new Task(subject = 'Follow Up Test Task', whatid = o.id));  
        }
              
    }
    if (oppList.size() > 0)
    {
        insert opplist;
    }
        
}