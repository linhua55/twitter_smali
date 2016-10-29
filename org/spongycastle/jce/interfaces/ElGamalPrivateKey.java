package org.spongycastle.jce.interfaces;

import java.math.BigInteger;
import java.security.PrivateKey;

/* compiled from: Twttr */
public interface ElGamalPrivateKey extends PrivateKey, ElGamalKey {
    BigInteger getX();
}
