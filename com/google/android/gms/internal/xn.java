package com.google.android.gms.internal;

import java.io.IOException;

public abstract class xn<M extends xn<M>> extends xs {
    protected xp a;

    public M a() throws CloneNotSupportedException {
        xn xnVar = (xn) super.b_();
        xr.a(this, xnVar);
        return xnVar;
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.a != null) {
            for (int i = 0; i < this.a.a(); i++) {
                this.a.b(i).a(com_google_android_gms_internal_zzsn);
            }
        }
    }

    protected final boolean a(xm xmVar, int i) throws IOException {
        int q = xmVar.q();
        if (!xmVar.b(i)) {
            return false;
        }
        int b = xv.b(i);
        xu xuVar = new xu(i, xmVar.a(q, xmVar.q() - q));
        xq xqVar = null;
        if (this.a == null) {
            this.a = new xp();
        } else {
            xqVar = this.a.a(b);
        }
        if (xqVar == null) {
            xqVar = new xq();
            this.a.a(b, xqVar);
        }
        xqVar.a(xuVar);
        return true;
    }

    protected int b() {
        int i = 0;
        if (this.a == null) {
            return 0;
        }
        int i2 = 0;
        while (i < this.a.a()) {
            i2 += this.a.b(i).a();
            i++;
        }
        return i2;
    }

    public /* synthetic */ xs b_() throws CloneNotSupportedException {
        return a();
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return a();
    }
}
