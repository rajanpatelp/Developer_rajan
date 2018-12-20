trigger HelloWorldPositionTrigger on Position__c (before insert, before update) {

	HelloWorldPosition.helloWorld(Trigger.new);
}