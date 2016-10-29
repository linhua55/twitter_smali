package com.google.android.gms.internal;

class jz implements Runnable {
    final /* synthetic */ sm a;
    final /* synthetic */ jx b;

    jz(jx jxVar, sm smVar) {
        this.b = jxVar;
        this.a = smVar;
    }

    public void run() {
        for (sm smVar : jx.e(this.b).keySet()) {
            if (smVar != this.a) {
                ((jr) jx.e(this.b).get(smVar)).a();
            }
        }
    }
}
