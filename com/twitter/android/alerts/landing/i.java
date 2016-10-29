package com.twitter.android.alerts.landing;

import defpackage.cgd;
import rx.am;

/* compiled from: Twttr */
class i extends am<cgd> {
    final /* synthetic */ boolean a;
    final /* synthetic */ f b;

    i(f fVar, boolean z) {
        this.b = fVar;
        this.a = z;
    }

    public /* synthetic */ void b_(Object obj) {
        a((cgd) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        f.a(this.b).c(f.b(this.b).f);
        f.a(this.b).d(this.a);
    }

    public void a(cgd cgd) {
        if (cgd != null) {
            f.a(this.b, cgd);
        }
        f.a(this.b).c(f.b(this.b).f);
    }
}
