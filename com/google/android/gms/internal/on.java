package com.google.android.gms.internal;

class on implements sr<jh> {
    final /* synthetic */ cu a;
    final /* synthetic */ om b;

    on(om omVar, cu cuVar) {
        this.b = omVar;
        this.a = cuVar;
    }

    public void a(jh jhVar) {
        this.b.c.a(this.a, new String[]{"jsf"});
        this.b.c.b();
        jhVar.a("/invalidRequest", this.b.b.c);
        jhVar.a("/loadAdURL", this.b.b.d);
        try {
            jhVar.a("AFMA_buildAdURL", this.b.e);
        } catch (Throwable e) {
            qd.b("Error requesting an ad url", e);
        }
    }

    public /* synthetic */ void a(Object obj) {
        a((jh) obj);
    }
}
