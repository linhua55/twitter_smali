package org.spongycastle.crypto.agreement.jpake;

import java.math.BigInteger;

/* compiled from: Twttr */
public class JPAKEUtil {
    static final BigInteger a;
    static final BigInteger b;

    static {
        a = BigInteger.valueOf(0);
        b = BigInteger.valueOf(1);
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str + " must not be null");
        }
    }
}
