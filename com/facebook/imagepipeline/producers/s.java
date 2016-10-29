package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import defpackage.bx;
import fz;
import ga;
import gh;
import gj;
import gm;

/* compiled from: Twttr */
class s extends t {
    final /* synthetic */ q a;
    private final ga c;
    private final fz d;
    private int e;

    public s(q qVar, o<a<gh>> oVar, bx bxVar, ga gaVar, fz fzVar) {
        this.a = qVar;
        super(qVar, oVar, bxVar);
        this.c = (ga) bx.a((Object) gaVar);
        this.d = (fz) bx.a((Object) fzVar);
        this.e = 0;
    }

    protected synchronized boolean a(gj gjVar, boolean z) {
        boolean z2 = false;
        synchronized (this) {
            boolean a = super.a(gjVar, z);
            if (!z && gj.e(gjVar)) {
                if (this.c.a(gjVar)) {
                    int b = this.c.b();
                    if (b > this.e && b >= this.d.a(this.e)) {
                        this.e = b;
                    }
                }
            }
            z2 = a;
        }
        return z2;
    }

    protected int a(gj gjVar) {
        return this.c.a();
    }

    protected gm c() {
        return this.d.b(this.c.b());
    }
}
