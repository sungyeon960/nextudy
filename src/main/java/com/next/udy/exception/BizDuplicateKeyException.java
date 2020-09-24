package com.next.udy.exception;

public class BizDuplicateKeyException extends BizException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BizDuplicateKeyException() {
		super();

	}

	public BizDuplicateKeyException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);

	}

	public BizDuplicateKeyException(String message, Throwable cause) {
		super(message, cause);
	
	}

	public BizDuplicateKeyException(String message) {
		super(message);

	}

	public BizDuplicateKeyException(Throwable cause) {
		super(cause);

	}

}
