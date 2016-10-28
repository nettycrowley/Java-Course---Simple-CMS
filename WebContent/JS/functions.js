function updateYear(){
  var d = new Date();
  var n = d.getFullYear();

  var s = document.getElementById("year");
  s.innerHTML = n;
}

function validate(){
		
	var password = document.getElementById("password");
	
	if(password.value == "" || password.value == "password") {
		
		alert("invalid password");
		return false;
	} else {
		return true;
	}
	
}
