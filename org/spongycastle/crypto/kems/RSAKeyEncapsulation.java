package org.spongycastle.crypto.kems;

import java.math.BigInteger;
import org.spongycastle.crypto.KeyEncapsulation;

/* compiled from: Twttr */
public class RSAKeyEncapsulation implements KeyEncapsulation {
    private static final BigInteger a;
    private static final BigInteger b;

    static {
        a = BigInteger.valueOf(0);
        b = BigInteger.valueOf(1);
    }
}
