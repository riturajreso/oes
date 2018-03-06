function Submit()
{
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
 var fname = document.form.FirstName.value,
 	lname = document.form.LastName.value,
 	femail = document.form.Email.value,
 	freemail = document.form.enterEmail.value,
 	fmonth = document.form.birthday_month.value,
 	fday = document.form.birthday_day.value,
 	fyear = document.form.birthday_year.value;
   
 if(fname=="" || fname ==null)
   	{
     	document.form.FirstName.focus();
     	document.getElementById("errorBox").innerHTML = "Enter the First Name";
     	//alert("enter the first name");
     	return false;
   	}
 if(lname=="" || lname==null)
   	{
     	document.form.LastName.focus() ;
     	document.getElementById("errorBox").innerHTML = "Enter the Last Name";
     	return false;
   	}
    
 if (femail=="" || femail==null)
   	{
	 	document.form.Email.focus();
	 	document.getElementById("errorBox").innerHTML = "Enter the Email id";
	 	return false;
   	}
 else if(!emailRegex.test(femail))
	{
		document.form.Email.focus();
		document.getElementById("errorBox").innerHTML = "Enter the valid Email id";
		return false;
	}
   
 if (freemail=="" || freemail==null)
 	{
	 	document.form.enterEmail.focus();
	 	document.getElementById("errorBox").innerHTML = "Re-enter the Email id";
	 	return false;
 	}
 else if(!emailRegex.test(freemail))
 	{
	 	document.form.enterEmail.focus();
	 	document.getElementById("errorBox").innerHTML = "Re-enter the valid Email id";
	 	return false;
 	}
   
 if(freemail !=  femail)
 	{
	 	document.form.enterEmail.focus();
	 	document.getElementById("errorBox").innerHTML = "Email id's are not matching, Re-enter again";
	 	return false;
 	}
   
   
 //if(fpassword=="" || fpassword==null)
  //	{
//	 	document.form.Password.focus();
	// 	document.getElementById("errorBox").innerHTML = "Enter the Password";
	// 	return false;
  //	}
 if (fyear=="" || fyear==null) 
 	{
     	document.form.birthday_year.focus();
     	document.getElementById("errorBox").innerHTML = "Select the Birthday Year";
     	return false;
 	}
 if (fmonth=="" || fmonth==null) 
 	{
        document.form.birthday_month.focus();
        document.getElementById("errorBox").innerHTML = "Select the Birthday Month";
        return false;
    }
 if (fday=="" || fday==null) 
 	{
        document.form.birthday_day.focus();
        document.getElementById("errorBox").innerHTML = "Select the Birthday Day";
        return false;
    }
 if(document.form.Sex[0].checked==false && document.form.Sex[1].checked==false)
 	{
	 	document.getElementById("errorBox").innerHTML = "Select your Gender";
	 	return false;
 	}
  //if(fname != '' && lname != '' && femail != '' && freemail != '' && fpassword != '' && fmonth != '' && fday != '' && fyear != ''){
  // document.getElementById("errorBox").innerHTML = "form submitted successfully";
  // }
 return true;
     
}// JavaScript Document