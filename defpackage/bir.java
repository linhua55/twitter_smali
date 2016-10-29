package defpackage;

import bhc;
import bip;

/* compiled from: Twttr */
/* renamed from: bir */
public class bir extends bhd<bip, bir, bit> {
    boolean e;
    int f;
    private final boolean g;

    protected /* synthetic */ Object c() {
        return h();
    }

    protected /* synthetic */ bhc e() {
        return h();
    }

    /* synthetic */ bhc f() {
        return i();
    }

    public bir() {
        this(false);
    }

    protected bir(bip bip) {
        super(bip);
        this.g = false;
        this.f = bip.f;
    }

    public bir(boolean z) {
        this.g = z;
    }

    public bir b(boolean z) {
        this.e = z;
        return this;
    }

    protected bip h() {
        this.f = this.e ? 19 : 0;
        if (!this.g) {
            return i();
        }
        bip bip = (bip) super.e();
        if (this.d) {
            return bip.A();
        }
        return bip;
    }

    bip i() {
        return new bip(this);
    }
}
