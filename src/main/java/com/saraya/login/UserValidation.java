package com.saraya.login;

public class UserValidation {
	
	public boolean isValid(String userName, String password) {
		
		if(userName.equalsIgnoreCase("Baye") && password.equalsIgnoreCase("secret")) {
			return true;
		}else {
			return false;
		}
				
    }
	
}
