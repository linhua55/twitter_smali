package com.fasterxml.jackson.core;

/* compiled from: Twttr */
public enum JsonEncoding {
    UTF8(Util.UTF_8, false, 8),
    UTF16_BE("UTF-16BE", true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);
    
    protected final boolean _bigEndian;
    protected final int _bits;
    protected final String _javaName;

    private JsonEncoding(String str, boolean z, int i) {
        this._javaName = str;
        this._bigEndian = z;
        this._bits = i;
    }

    public String a() {
        return this._javaName;
    }

    public boolean b() {
        return this._bigEndian;
    }

    public int c() {
        return this._bits;
    }
}
