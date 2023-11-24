({
	handleEvent : function(cmp, evt, hpr) {
		alert("Yes, i am ready to handle the event ");
        var v = evt.getParam("myText");
        alert(v);
	}
})