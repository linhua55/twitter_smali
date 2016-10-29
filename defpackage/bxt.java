package defpackage;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
/* renamed from: bxt */
class bxt implements Callable<Long> {
    final /* synthetic */ bxr a;

    bxt(bxr bxr) {
        this.a = bxr;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Long a() throws Exception {
        return Long.valueOf(this.a.b());
    }
}
