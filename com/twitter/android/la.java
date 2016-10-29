package com.twitter.android;

import com.twitter.library.widget.StatusToolBar;
import com.twitter.library.widget.al;

/* compiled from: Twttr */
class la implements al {
    final /* synthetic */ int a;
    final /* synthetic */ StatusToolBar b;
    final /* synthetic */ kz c;

    la(kz kzVar, int i, StatusToolBar statusToolBar) {
        this.c = kzVar;
        this.a = i;
        this.b = statusToolBar;
    }

    public void a() {
        kz.a(this.c, this.a + this.b.getStatusBarMessageHeight());
    }

    public void b() {
        kz.a(this.c, this.a);
    }
}
