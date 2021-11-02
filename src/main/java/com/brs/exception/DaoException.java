package com.brs.exception;

public class DaoException extends Exception {

	public DaoException(String message) {
		super(message);
	}
	
	public String getMessage() {
		return "DaoException:"+ super.getMessage();
	}

}

