package com.google.android.gms.internal;

final class om implements Runnable {
    final /* synthetic */ ik a;
    final /* synthetic */ ov b;
    final /* synthetic */ cy c;
    final /* synthetic */ cu d;
    final /* synthetic */ String e;

    om(ik ikVar, ov ovVar, cy cyVar, cu cuVar, String str) {
        this.a = ikVar;
        this.b = ovVar;
        this.c = cyVar;
        this.d = cuVar;
        this.e = str;
    }

    public void run() {
        iy b = this.a.b();
        this.b.a(b);
        this.c.a(this.d, new String[]{"rwc"});
        b.a(new on(this, this.c.a()), new oo(this));
    }
}
