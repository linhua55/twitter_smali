package com.twitter.app.common.list;

import com.twitter.refresh.widget.d;

/* compiled from: Twttr */
class u implements d {
    final /* synthetic */ k a;

    private u(k kVar) {
        this.a = kVar;
    }

    public void a() {
        this.a.b(0);
    }

    public void b() {
        this.a.b(2);
    }

    public void a(boolean z) {
        if (z) {
            for (q G : k.b(this.a)) {
                G.G();
            }
            this.a.a.announceForAccessibility(k.c(this.a).getString(2131363456));
        }
    }
}
