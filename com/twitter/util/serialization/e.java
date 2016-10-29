package com.twitter.util.serialization;

/* compiled from: Twttr */
abstract class e extends o {
    public static final byte a;
    public static final byte b;
    public static final byte c;
    public static final byte d;
    public static final byte e;
    public static final byte f;
    public static final byte g;
    public static final byte h;
    public static final byte i;
    public static final byte j;
    public static final byte k;
    public static final byte l;

    static {
        a = a((byte) 1, (byte) 0);
        b = a((byte) 1, (byte) 1);
        c = a((byte) 6, (byte) 0);
        d = a((byte) 6, (byte) 1);
        e = a((byte) 4, (byte) 0);
        f = a((byte) 4, (byte) 1);
        g = a((byte) 5, (byte) 0);
        h = a((byte) 5, (byte) 1);
        i = a((byte) 7, (byte) 0);
        j = a((byte) 13, (byte) 1);
        k = a((byte) 14, (byte) 0);
        l = a((byte) 11, (byte) 0);
    }

    public static byte a(byte b, byte b2) {
        return (byte) ((b << 3) | b2);
    }

    public static byte a(byte b) {
        return (byte) ((b >> 3) & 31);
    }

    public static byte b(byte b) {
        return (byte) (b & 7);
    }
}
