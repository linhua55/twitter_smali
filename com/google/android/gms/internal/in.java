package com.google.android.gms.internal;

class in implements Runnable {
    final /* synthetic */ im a;

    in(im imVar) {
        this.a = imVar;
    }

    public void run() {
        synchronized (ik.c(this.a.b.b)) {
            if (this.a.b.a.f() == -1 || this.a.b.a.f() == 1) {
                return;
            }
            this.a.b.a.e();
            qw.a(new io(this));
            qd.e("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }
}
