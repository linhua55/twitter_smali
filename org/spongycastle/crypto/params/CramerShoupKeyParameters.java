package org.spongycastle.crypto.params;

/* compiled from: Twttr */
public class CramerShoupKeyParameters extends AsymmetricKeyParameter {
    private CramerShoupParameters b;

    protected CramerShoupKeyParameters(boolean z, CramerShoupParameters cramerShoupParameters) {
        super(z);
        this.b = cramerShoupParameters;
    }

    public CramerShoupParameters b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupKeyParameters)) {
            return false;
        }
        CramerShoupKeyParameters cramerShoupKeyParameters = (CramerShoupKeyParameters) obj;
        if (this.b != null) {
            return this.b.equals(cramerShoupKeyParameters.b());
        }
        if (cramerShoupKeyParameters.b() == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i = a() ? 0 : 1;
        if (this.b != null) {
            return i ^ this.b.hashCode();
        }
        return i;
    }
}
