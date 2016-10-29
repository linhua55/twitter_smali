package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

/* compiled from: Twttr */
public interface ECPrivateKey extends PrivateKey, ECKey {
    BigInteger d();
}
