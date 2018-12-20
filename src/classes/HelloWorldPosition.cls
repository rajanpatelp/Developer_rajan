public with sharing class HelloWorldPosition {

	public static void helloWorld(List<Position__c> Positions)
	{
		for (Position__c p:positions)
		{
			p.hello__c = 'World';
		}
		
	}
}