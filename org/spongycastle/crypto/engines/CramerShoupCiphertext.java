package org.spongycastle.crypto.engines;

import java.math.BigInteger;

/* compiled from: Twttr */
public class CramerShoupCiphertext {
    BigInteger a;
    BigInteger b;
    BigInteger c;
    BigInteger d;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.a.toString());
        stringBuffer.append("\nu2: " + this.b.toString());
        stringBuffer.append("\ne: " + this.c.toString());
        stringBuffer.append("\nv: " + this.d.toString());
        return stringBuffer.toString();
    }
}
