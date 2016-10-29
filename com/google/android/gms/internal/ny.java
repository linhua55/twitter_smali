package com.google.android.gms.internal;

class ny implements Runnable {
    final /* synthetic */ sg a;
    final /* synthetic */ String b;
    final /* synthetic */ nw c;

    ny(nw nwVar, sg sgVar, String str) {
        this.c = nwVar;
        this.a = sgVar;
        this.b = str;
    }

    public void run() {
        this.a.b(nw.a(this.c).z().get(this.b));
    }
}
