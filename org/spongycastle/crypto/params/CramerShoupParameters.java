package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

/* compiled from: Twttr */
public class CramerShoupParameters implements CipherParameters {
    private BigInteger a;
    private BigInteger b;
    private BigInteger c;

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAParameters)) {
            return false;
        }
        CramerShoupParameters cramerShoupParameters = (CramerShoupParameters) obj;
        if (cramerShoupParameters.c().equals(this.a) && cramerShoupParameters.a().equals(this.b) && cramerShoupParameters.b().equals(this.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (c().hashCode() ^ a().hashCode()) ^ b().hashCode();
    }

    public BigInteger a() {
        return this.b;
    }

    public BigInteger b() {
        return this.c;
    }

    public BigInteger c() {
        return this.a;
    }
}
