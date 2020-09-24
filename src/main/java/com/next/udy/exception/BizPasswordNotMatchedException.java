package com.next.udy.exception;

public class BizPasswordNotMatchedException extends BizException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BizPasswordNotMatchedException() {
		super();

	}

	public BizPasswordNotMatchedException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);

	}

	public BizPasswordNotMatchedException(String message, Throwable cause) {
		super(message, cause);
	
	}

	public BizPasswordNotMatchedException(String message) {
		super(message);

	}

	public BizPasswordNotMatchedException(Throwable cause) {
		super(cause);

	}

}
