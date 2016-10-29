package com.squareup.okhttp.internal.framed;

import okio.ByteString;

/* compiled from: Twttr */
public final class Header {
    public static final ByteString RESPONSE_STATUS;
    public static final ByteString TARGET_AUTHORITY;
    public static final ByteString TARGET_HOST;
    public static final ByteString TARGET_METHOD;
    public static final ByteString TARGET_PATH;
    public static final ByteString TARGET_SCHEME;
    public static final ByteString VERSION;
    final int hpackSize;
    public final ByteString name;
    public final ByteString value;

    static {
        RESPONSE_STATUS = ByteString.a(":status");
        TARGET_METHOD = ByteString.a(":method");
        TARGET_PATH = ByteString.a(":path");
        TARGET_SCHEME = ByteString.a(":scheme");
        TARGET_AUTHORITY = ByteString.a(":authority");
        TARGET_HOST = ByteString.a(":host");
        VERSION = ByteString.a(":version");
    }

    public Header(String str, String str2) {
        this(ByteString.a(str), ByteString.a(str2));
    }

    public Header(ByteString byteString, String str) {
        this(byteString, ByteString.a(str));
    }

    public Header(ByteString byteString, ByteString byteString2) {
        this.name = byteString;
        this.value = byteString2;
        this.hpackSize = (byteString.f() + 32) + byteString2.f();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        if (this.name.equals(header.name) && this.value.equals(header.value)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.name.hashCode() + 527) * 31) + this.value.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", new Object[]{this.name.a(), this.value.a()});
    }
}
