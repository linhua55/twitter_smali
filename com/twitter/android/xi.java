package com.twitter.android;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class xi extends z {
    final /* synthetic */ xf a;
    private final long b;

    xi(xf xfVar, long j) {
        this.a = xfVar;
        this.b = j;
    }

    public void a(x xVar) {
        if (!((aa) xVar.l().b()).b()) {
            this.a.c.b(this.b);
            xf.c(this.a).notifyDataSetChanged();
        }
    }
}
