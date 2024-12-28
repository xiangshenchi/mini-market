package com.example.api.exception;

public class VerificationCodeException extends Exception {
    public VerificationCodeException(String message) {
        super(message);
    }

    public VerificationCodeException(String message, Throwable cause) {
        super(message, cause);
    }
}
