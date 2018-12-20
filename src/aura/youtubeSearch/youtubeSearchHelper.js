({
  setSearchTerm : function(component, event) {
        var searchTerm = component.find('searchBox').getElement().value;
        console.log(searchTerm);
         component.set("v.searchTerm",searchTerm);
// create a one-time use instance of the search action
        // in the server-side controller
var action = component.get("c.search");
       action.setParams({ searchstr : searchTerm});
       action.setCallback(this, function(response) {
           var state = response.getState();
           if (state === "SUCCESS") {
               var youtube_res = JSON.parse(response.getReturnValue());
               console.log(response.getReturnValue());
               console.log(youtube_res);
               component.set("v.data",youtube_res);

           }
           else if (state === "INCOMPLETE") {
               // do something
           }
           else if (state === "ERROR") {
               var errors = response.getError();
               if (errors) {
                   if (errors[0] && errors[0].message) {
                       console.log("Error message: " +
                                errors[0].message);
                   }
               } else {
                   console.log("Unknown error");
               }
           }
       });
       $A.enqueueAction(action);
 }
})