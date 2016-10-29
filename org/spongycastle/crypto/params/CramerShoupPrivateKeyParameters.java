package org.spongycastle.crypto.params;

import java.math.BigInteger;

/* compiled from: Twttr */
public class CramerShoupPrivateKeyParameters extends CramerShoupKeyParameters {
    private BigInteger b;
    private BigInteger c;
    private BigInteger d;
    private BigInteger e;
    private BigInteger f;
    private CramerShoupPublicKeyParameters g;

    public CramerShoupPrivateKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, cramerShoupParameters);
        this.b = bigInteger;
        this.c = bigInteger2;
        this.d = bigInteger3;
        this.e = bigInteger4;
        this.f = bigInteger5;
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

    public BigInteger f() {
        return this.e;
    }

    public BigInteger g() {
        return this.f;
    }

    public void a(CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters) {
        this.g = cramerShoupPublicKeyParameters;
    }

    public int hashCode() {
        return ((((this.b.hashCode() ^ this.c.hashCode()) ^ this.d.hashCode()) ^ this.e.hashCode()) ^ this.f.hashCode()) ^ super.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPrivateKeyParameters)) {
            return false;
        }
        CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) obj;
        boolean z = cramerShoupPrivateKeyParameters.c().equals(this.b) && cramerShoupPrivateKeyParameters.d().equals(this.c) && cramerShoupPrivateKeyParameters.e().equals(this.d) && cramerShoupPrivateKeyParameters.f().equals(this.e) && cramerShoupPrivateKeyParameters.g().equals(this.f) && super.equals(obj);
        return z;
    }
}
