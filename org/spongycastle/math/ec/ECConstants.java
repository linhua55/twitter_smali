package org.spongycastle.math.ec;

import java.math.BigInteger;

/* compiled from: Twttr */
public interface ECConstants {
    public static final BigInteger c;
    public static final BigInteger d;
    public static final BigInteger e;
    public static final BigInteger f;
    public static final BigInteger g;

    static {
        c = BigInteger.valueOf(0);
        d = BigInteger.valueOf(1);
        e = BigInteger.valueOf(2);
        f = BigInteger.valueOf(3);
        g = BigInteger.valueOf(4);
    }
}
