package com.twitter.android.av;

import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ g b;

    h(g gVar, Context context) {
        this.b = gVar;
        this.a = context;
    }

    public void run() {
        Intent a = this.b.a(this.a);
        a.setFlags(268435456);
        this.a.startActivity(a);
    }
}
