package com.google.android.gms.internal;

class ir implements Runnable {
    final /* synthetic */ hx a;
    final /* synthetic */ il b;

    ir(il ilVar, hx hxVar) {
        this.b = ilVar;
        this.a = hxVar;
    }

    public void run() {
        synchronized (ik.c(this.b.b)) {
            if (this.b.a.f() == -1 || this.b.a.f() == 1) {
                return;
            }
            this.b.a.e();
            qw.a(new is(this));
            qd.e("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }
}
