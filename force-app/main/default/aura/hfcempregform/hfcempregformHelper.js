({
	hprMethod : function(cmp,evt) {
		alert("I am from helper..");
        var eName = cmp.get('v.empName');
        	alert(eName);
        var eFname = cmp.get('v.empFName');
			alert(eFname);        
        var eAddr = cmp.get('v.empAddress');
        	alert(eAddr);
        var eDept = cmp.get('v.empDept');
        	alert(eDept);
        var eSal = cmp.get('v.empSalary');
        	alert(eSal);
        var action = cmp.get('c.insertEmpDetails');
        
        action.setParams({
            "enm" : eName,
            "efnam" : eAddr,
            "eaddr" : eAddr,
            "edept" : eDept,
            "esal" : eSal
        });
        action.setCallback(this,  function(a){
            var state = a.getState();
            if(state == 'SUCCESS'){
                alert('Record inserted successfully');
            }
        });
        $A.enqueueAction(action);
	}
})