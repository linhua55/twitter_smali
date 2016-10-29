package org.spongycastle.jcajce.provider.asymmetric.util;

import java.io.IOException;
import java.math.BigInteger;

/* compiled from: Twttr */
public interface DSAEncoder {
    byte[] a(BigInteger bigInteger, BigInteger bigInteger2) throws IOException;

    BigInteger[] a(byte[] bArr) throws IOException;
}
