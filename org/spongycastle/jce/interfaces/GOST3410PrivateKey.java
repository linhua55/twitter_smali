package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

/* compiled from: Twttr */
public interface GOST3410PrivateKey extends PrivateKey, GOST3410Key {
    BigInteger c();
}
