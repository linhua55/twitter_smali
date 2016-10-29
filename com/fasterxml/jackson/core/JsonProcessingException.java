package com.fasterxml.jackson.core;

import java.io.IOException;

/* compiled from: Twttr */
public class JsonProcessingException extends IOException {
    static final long serialVersionUID = 123;
    protected JsonLocation _location;

    protected JsonProcessingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this._location = jsonLocation;
    }

    protected JsonProcessingException(String str, JsonLocation jsonLocation) {
        this(str, jsonLocation, null);
    }

    public JsonLocation a() {
        return this._location;
    }

    protected String b() {
        return null;
    }

    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        JsonLocation a = a();
        String b = b();
        if (a == null && b == null) {
            return message;
        }
        StringBuilder stringBuilder = new StringBuilder(100);
        stringBuilder.append(message);
        if (b != null) {
            stringBuilder.append(b);
        }
        if (a != null) {
            stringBuilder.append('\n');
            stringBuilder.append(" at ");
            stringBuilder.append(a.toString());
        }
        return stringBuilder.toString();
    }

    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
