({
	helperMethod : function(cmp,evt) {
        
        alert('yes sir, I am your Helper. Please Let me Know');
        
        var eName = cmp.get("v.empName");
        alert('Emp Name = ' + eName);
        
        var eFName = cmp.get("v.empFatherName");
        alert('Emp Father Name = ' + eFName);
        
        var eAddress = cmp.get("v.empAddress");
        alert('Emp Address = ' + eAddress);
        
        var eDept = cmp.get("v.empDept");
        alert('Emp Dept = ' + eDept);
        
        var eSalary = cmp.get("v.empSalary");
        alert('Emp Salary = ' + eSalary);
        
        
        var action = cmp.get('c.insertEmpDetails');
        // method name i.e insertEmpDetails should be same as defined i apex class
        // Params name i.e parameters should be sama as defined in insertEmpDetails method
        
        
        
        action.setParams({
            "enm" : eName,
            "efnm" :  eFName,
            "eaddr" : eAddress,
            "edpt" : eDept,
            "esal" : eSalary
            
        });
        
        action.setCallback(this, function(a) {
         	var state = a.getState(); // get the response state
        
        if(state = 'SUCCESS') {
            alert('Record inserted Successfully');
        	}
         });
                           
                           
        
    
     $A.enqueueAction(action);
		
	}
})