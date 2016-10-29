package org.spongycastle.crypto.kems;

import java.math.BigInteger;
import org.spongycastle.crypto.KeyEncapsulation;

/* compiled from: Twttr */
public class ECIESKeyEncapsulation implements KeyEncapsulation {
    private static final BigInteger a;

    static {
        a = BigInteger.valueOf(1);
    }
}
