package com.google.android.gms.internal;

class iu implements sp {
    final /* synthetic */ jc a;
    final /* synthetic */ ik b;

    iu(ik ikVar, jc jcVar) {
        this.b = ikVar;
        this.a = jcVar;
    }

    public void a() {
        synchronized (ik.c(this.b)) {
            ik.a(this.b, 1);
            qd.e("Failed loading new engine. Marking new engine destroyable.");
            this.a.c();
        }
    }
}
