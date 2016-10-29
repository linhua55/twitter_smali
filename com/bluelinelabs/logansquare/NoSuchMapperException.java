package com.bluelinelabs.logansquare;

/* compiled from: Twttr */
public class NoSuchMapperException extends RuntimeException {
    public NoSuchMapperException(Class cls, Exception exception) {
        super("Class " + cls.getCanonicalName() + " could not be mapped to a JSON object. Perhaps it hasn't been annotated with @JsonObject?", exception);
    }
}
