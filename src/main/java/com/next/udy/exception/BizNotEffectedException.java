package com.next.udy.exception;

public class BizNotEffectedException extends BizException {

	public BizNotEffectedException() {
		super();

	}

	public BizNotEffectedException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);

	}

	public BizNotEffectedException(String message, Throwable cause) {
		super(message, cause);
	
	}

	public BizNotEffectedException(String message) {
		super(message);

	}

	public BizNotEffectedException(Throwable cause) {
		super(cause);

	}

}
