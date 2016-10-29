package com.twitter.android.av;

import android.content.Context;

/* compiled from: Twttr */
class be implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ bd b;

    be(bd bdVar, Context context) {
        this.b = bdVar;
        this.a = context;
    }

    public void run() {
        Runnable bfVar = new bf(this, bd.a(this.b, this.a));
        if (bd.c(this.b) <= 0 || bd.d(this.b) == null) {
            bfVar.run();
        } else {
            bd.f(this.b).postDelayed(bfVar, (long) bd.e(this.b));
        }
    }
}
