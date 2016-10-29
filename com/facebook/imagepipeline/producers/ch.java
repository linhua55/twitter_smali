package com.facebook.imagepipeline.producers;

/* compiled from: Twttr */
class ch extends cf<T> {
    final /* synthetic */ bz b;
    final /* synthetic */ String c;
    final /* synthetic */ o d;
    final /* synthetic */ bx e;
    final /* synthetic */ cg f;

    ch(cg cgVar, o oVar, bz bzVar, String str, String str2, bz bzVar2, String str3, o oVar2, bx bxVar) {
        this.f = cgVar;
        this.b = bzVar2;
        this.c = str3;
        this.d = oVar2;
        this.e = bxVar;
        super(oVar, bzVar, str, str2);
    }

    protected void a(T t) {
        this.b.a(this.c, "BackgroundThreadHandoffProducer", null);
        this.f.b.a(this.d, this.e);
    }

    protected void b(T t) {
    }

    protected T c() throws Exception {
        return null;
    }
}
