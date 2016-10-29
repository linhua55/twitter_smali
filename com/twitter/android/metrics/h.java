package com.twitter.android.metrics;

import com.twitter.app.common.list.k;
import com.twitter.app.common.list.n;

/* compiled from: Twttr */
class h extends n {
    final /* synthetic */ g a;
    private int b;
    private int c;

    h(g gVar) {
        this.a = gVar;
        b();
    }

    private void b() {
        this.b = -1;
        this.c = -1;
    }

    public int a() {
        return Math.abs(this.c - this.b);
    }

    public void a(k kVar, int i) {
        if (i == 0) {
            this.c = kVar.a.getFirstVisiblePosition();
        } else if (i == 1) {
            b();
            this.b = kVar.a.getFirstVisiblePosition();
        }
    }
}
