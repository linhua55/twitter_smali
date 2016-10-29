package com.twitter.android.moments.ui.guide;

import android.view.View;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.ui.a;
import java.util.Collection;
import rx.an;

/* compiled from: Twttr */
class f {
    private final a a;
    private final s b;
    private final s c;
    private final Collection<al> d;
    private an e;
    private an f;
    private long g;
    private boolean h;

    f(a aVar, s sVar, s sVar2, Collection<al> collection) {
        this.a = aVar;
        this.b = sVar;
        this.c = sVar2;
        this.d = collection;
    }

    public void a(long j) {
        if (this.g != j) {
            this.g = j;
            if (this.e != null) {
                this.e.K_();
            }
            this.e = this.b.a(Long.valueOf(j)).c(new g(this, j));
            if (this.f != null) {
                this.f.K_();
            }
            this.f = this.c.a(Long.valueOf(j)).c(new h(this, j));
        }
    }

    private void b(long j) {
        float f;
        boolean z;
        if (this.b.a(j) || !this.c.a(j)) {
            f = 1.0f;
            z = false;
        } else {
            f = 0.7f;
            z = true;
        }
        if (z != this.h) {
            for (al b : this.d) {
                for (View alpha : b.b()) {
                    alpha.setAlpha(f);
                }
            }
        }
        this.h = z;
    }
}
