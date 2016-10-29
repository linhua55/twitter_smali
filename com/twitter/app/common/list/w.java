package com.twitter.app.common.list;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

/* compiled from: Twttr */
class w implements OnScrollListener {
    final /* synthetic */ k a;
    private int b;
    private int c;

    private w(k kVar) {
        this.a = kVar;
    }

    public final void onScrollStateChanged(AbsListView absListView, int i) {
        for (p a : k.e(this.a)) {
            if (a.a(absListView, i)) {
                return;
            }
        }
        for (r a2 : k.f(this.a)) {
            a2.a(this.a, i);
        }
    }

    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        boolean z = (i == this.b && i2 == this.c) ? false : true;
        try {
            for (p a : k.e(this.a)) {
                if (a.a(absListView, i, i2, i3, z)) {
                    return;
                }
            }
            if (i2 == 0 || !z) {
                this.b = i;
                this.c = i2;
                return;
            }
            if (i == 0) {
                this.a.v();
            } else {
                if (this.b == 0) {
                    for (r c : k.f(this.a)) {
                        c.c(this.a);
                    }
                }
                if (i + i2 >= i3) {
                    for (r c2 : k.f(this.a)) {
                        c2.b(this.a);
                    }
                }
            }
            this.b = i;
            this.c = i2;
        } finally {
            this.b = i;
            this.c = i2;
        }
    }
}
