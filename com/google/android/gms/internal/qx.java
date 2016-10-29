package com.google.android.gms.internal;

import android.content.Context;

class qx implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ qw b;

    qx(qw qwVar, Context context) {
        this.b = qwVar;
        this.a = context;
    }

    public void run() {
        synchronized (qw.a(this.b)) {
            qw.a(this.b, this.b.c(this.a));
            qw.a(this.b).notifyAll();
        }
    }
}
