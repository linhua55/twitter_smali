package com.google.android.gms.internal;

class it implements sr<hx> {
    final /* synthetic */ jc a;
    final /* synthetic */ ik b;

    it(ik ikVar, jc jcVar) {
        this.b = ikVar;
        this.a = jcVar;
    }

    public void a(hx hxVar) {
        synchronized (ik.c(this.b)) {
            ik.a(this.b, 0);
            if (!(ik.g(this.b) == null || this.a == ik.g(this.b))) {
                qd.e("New JS engine is loaded, marking previous one as destroyable.");
                ik.g(this.b).c();
            }
            ik.a(this.b, this.a);
        }
    }

    public /* synthetic */ void a(Object obj) {
        a((hx) obj);
    }
}
