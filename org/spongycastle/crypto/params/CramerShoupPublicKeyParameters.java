package org.spongycastle.crypto.params;

import java.math.BigInteger;

/* compiled from: Twttr */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {
    private BigInteger b;
    private BigInteger c;
    private BigInteger d;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.b = bigInteger;
        this.c = bigInteger2;
        this.d = bigInteger3;
    }

    public BigInteger c() {
        return this.b;
    }

    public BigInteger d() {
        return this.c;
    }

    public BigInteger e() {
        return this.d;
    }

    public int hashCode() {
        return ((this.b.hashCode() ^ this.c.hashCode()) ^ this.d.hashCode()) ^ super.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        boolean z = cramerShoupPublicKeyParameters.c().equals(this.b) && cramerShoupPublicKeyParameters.d().equals(this.c) && cramerShoupPublicKeyParameters.e().equals(this.d) && super.equals(obj);
        return z;
    }
}
