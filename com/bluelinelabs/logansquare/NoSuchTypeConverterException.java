package com.bluelinelabs.logansquare;

/* compiled from: Twttr */
public class NoSuchTypeConverterException extends RuntimeException {
    public NoSuchTypeConverterException(Class cls) {
        super("Class " + cls.getCanonicalName() + " does not having a TypeConverter defined. TypeConverters can be added using LoganSquare.registerTypeConverter().");
    }
}
