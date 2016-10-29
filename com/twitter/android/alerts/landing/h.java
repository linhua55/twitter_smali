package com.twitter.android.alerts.landing;

import defpackage.cgd;
import rx.r;

/* compiled from: Twttr */
class h implements r<cgd> {
    final /* synthetic */ f a;

    h(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((cgd) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        f.a(this.a).f();
    }

    public void a(cgd cgd) {
        f.a(this.a, cgd);
        if (cgd == null) {
            f.a(this.a).f();
        } else {
            f.b(this.a, cgd);
        }
    }
}
