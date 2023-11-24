({
	fireEvent : function(cmp, evt, hpr) {
		alert("yes, i got called");
        
        var e = cmp.getEvent("myEvt");
        e.setParams({"myText":"Last class of Aura"});
        e.fire();
	}
})