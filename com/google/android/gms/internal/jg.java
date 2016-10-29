package com.google.android.gms.internal;

class jg implements Runnable {
    final /* synthetic */ hx a;
    final /* synthetic */ jf b;

    jg(jf jfVar, hx hxVar) {
        this.b = jfVar;
        this.a = hxVar;
    }

    public void run() {
        this.b.a.e.a(this.a);
        this.a.a();
    }
}
