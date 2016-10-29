package com.fasterxml.jackson.core;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;

/* compiled from: Twttr */
public abstract class JsonParser implements Closeable {
    protected int a;

    /* compiled from: Twttr */
    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        STRICT_DUPLICATE_DETECTION(false);
        
        private final boolean _defaultState;
        private final int _mask;

        public static int a() {
            int i = 0;
            for (Feature feature : values()) {
                if (feature.b()) {
                    i |= feature.c();
                }
            }
            return i;
        }

        private Feature(boolean z) {
            this._mask = 1 << ordinal();
            this._defaultState = z;
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

    public abstract JsonToken a() throws IOException, JsonParseException;

    public abstract String a(String str) throws IOException;

    public abstract JsonParser c() throws IOException, JsonParseException;

    public abstract JsonToken d();

    public abstract String e() throws IOException;

    public abstract JsonLocation f();

    public abstract String g() throws IOException;

    public abstract Number h() throws IOException;

    public abstract int i() throws IOException;

    public abstract long j() throws IOException;

    public abstract double k() throws IOException;

    public abstract BigDecimal l() throws IOException;

    public abstract Object n() throws IOException;

    protected JsonParser() {
    }

    public boolean a(Feature feature) {
        return feature.a(this.a);
    }

    public boolean a(d dVar) throws IOException, JsonParseException {
        return a() == JsonToken.FIELD_NAME && dVar.a().equals(e());
    }

    public String b() throws IOException, JsonParseException {
        return a() == JsonToken.VALUE_STRING ? g() : null;
    }

    public boolean m() throws IOException {
        JsonToken d = d();
        if (d == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (d == JsonToken.VALUE_FALSE) {
            return false;
        }
        throw new JsonParseException("Current token (" + d + ") not of boolean type", f());
    }

    public int o() throws IOException {
        return a(0);
    }

    public int a(int i) throws IOException {
        return i;
    }

    public long p() throws IOException {
        return a(0);
    }

    public long a(long j) throws IOException {
        return j;
    }

    public double q() throws IOException {
        return a(0.0d);
    }

    public double a(double d) throws IOException {
        return d;
    }

    public boolean r() throws IOException {
        return a(false);
    }

    public boolean a(boolean z) throws IOException {
        return z;
    }

    public String s() throws IOException {
        return a(null);
    }

    protected JsonParseException b(String str) {
        return new JsonParseException(str, f());
    }
}
