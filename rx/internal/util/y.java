package rx.internal.util;

import defpackage.cyr;
import rx.u;

/* compiled from: Twttr */
class y implements cyr {
    final /* synthetic */ cyr a;
    final /* synthetic */ u b;
    final /* synthetic */ x c;

    y(x xVar, cyr cyr, u uVar) {
        this.c = xVar;
        this.a = cyr;
        this.b = uVar;
    }

    public void a() {
        try {
            this.a.a();
        } finally {
            this.b.K_();
        }
    }
}
