package com.google.android.gms.internal;

class il implements Runnable {
    final /* synthetic */ jc a;
    final /* synthetic */ ik b;

    il(ik ikVar, jc jcVar) {
        this.b = ikVar;
        this.a = jcVar;
    }

    public void run() {
        hx a = this.b.a(ik.a(this.b), ik.b(this.b));
        a.a(new im(this, a));
        a.a("/jsLoaded", new ip(this, a));
        sd sdVar = new sd();
        fj iqVar = new iq(this, a, sdVar);
        sdVar.a(iqVar);
        a.a("/requestReload", iqVar);
        if (ik.f(this.b).endsWith(".js")) {
            a.a(ik.f(this.b));
        } else if (ik.f(this.b).startsWith("<html>")) {
            a.c(ik.f(this.b));
        } else {
            a.b(ik.f(this.b));
        }
        qw.a.postDelayed(new ir(this, a), (long) iv.a);
    }
}
