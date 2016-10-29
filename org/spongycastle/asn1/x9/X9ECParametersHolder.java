package org.spongycastle.asn1.x9;

/* compiled from: Twttr */
public abstract class X9ECParametersHolder {
    private X9ECParameters a;

    protected abstract X9ECParameters a();

    public X9ECParameters b() {
        if (this.a == null) {
            this.a = a();
        }
        return this.a;
    }
}
