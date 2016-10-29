package com.twitter.android;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class xh extends z {
    final /* synthetic */ xf a;
    private final long b;

    xh(xf xfVar, long j) {
        this.a = xfVar;
        this.b = j;
    }

    public void a(x xVar) {
        if (!((aa) xVar.l().b()).b()) {
            this.a.c.c(this.b);
            xf.c(this.a).notifyDataSetChanged();
        }
    }
}
