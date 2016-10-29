package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PublicKey;

/* compiled from: Twttr */
public interface GOST3410PublicKey extends PublicKey, GOST3410Key {
    BigInteger a();
}
