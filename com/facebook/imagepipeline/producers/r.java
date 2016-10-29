package com.facebook.imagepipeline.producers;

import com.facebook.common.references.a;
import gh;
import gj;
import gl;
import gm;

/* compiled from: Twttr */
class r extends t {
    final /* synthetic */ q a;

    public r(q qVar, o<a<gh>> oVar, bx bxVar) {
        this.a = qVar;
        super(qVar, oVar, bxVar);
    }

    protected synchronized boolean a(gj gjVar, boolean z) {
        boolean a;
        if (z) {
            a = super.a(gjVar, z);
        } else {
            a = false;
        }
        return a;
    }

    protected int a(gj gjVar) {
        return gjVar.j();
    }

    protected gm c() {
        return gl.a(0, false, false);
    }
}
