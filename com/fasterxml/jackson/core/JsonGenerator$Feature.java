package com.fasterxml.jackson.core;

/* compiled from: Twttr */
public enum JsonGenerator$Feature {
    AUTO_CLOSE_TARGET(true),
    AUTO_CLOSE_JSON_CONTENT(true),
    QUOTE_FIELD_NAMES(true),
    QUOTE_NON_NUMERIC_NUMBERS(true),
    WRITE_NUMBERS_AS_STRINGS(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    FLUSH_PASSED_TO_STREAM(true),
    ESCAPE_NON_ASCII(false),
    STRICT_DUPLICATE_DETECTION(false),
    IGNORE_UNKNOWN(false);
    
    private final boolean _defaultState;
    private final int _mask;

    public static int a() {
        int i = 0;
        for (JsonGenerator$Feature jsonGenerator$Feature : values()) {
            if (jsonGenerator$Feature.b()) {
                i |= jsonGenerator$Feature.c();
            }
        }
        return i;
    }

    private JsonGenerator$Feature(boolean z) {
        this._defaultState = z;
        this._mask = 1 << ordinal();
    }

    public boolean b() {
        return this._defaultState;
    }

    public boolean a(int i) {
        return (this._mask & i) != 0;
    }

    public int c() {
        return this._mask;
    }
}
