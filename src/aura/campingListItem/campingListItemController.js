({
	packItem : function(component, event, helper) {        
        
        var btnLabel = event.getSource().get("v.label");
        //if ("v.item.Packed__c" == false)
        {
            component.set("v.item","Packed");
        }
		event.getSource().set("v.disabled",true);
	}
})