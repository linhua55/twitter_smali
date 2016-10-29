package com.google.android.gms.internal;

class js implements Runnable {
    final /* synthetic */ jq a;
    final /* synthetic */ jr b;

    js(jr jrVar, jq jqVar) {
        this.b = jrVar;
        this.a = jqVar;
    }

    public void run() {
        synchronized (jr.a(this.b)) {
            if (jr.b(this.b) != -2) {
                return;
            }
            jr.a(this.b, jr.c(this.b));
            if (jr.d(this.b) == null) {
                this.b.a(4);
            } else if (!jr.e(this.b) || jr.a(this.b, 1)) {
                this.a.a(this.b);
                jr.a(this.b, this.a);
            } else {
                qd.d("Ignoring adapter " + jr.f(this.b) + " as delayed" + " impression is not supported");
                this.b.a(2);
            }
        }
    }
}
