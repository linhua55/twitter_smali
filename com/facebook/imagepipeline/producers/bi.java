package com.facebook.imagepipeline.producers;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class bi implements bk {
    final /* synthetic */ af a;
    final /* synthetic */ bh b;

    bi(bh bhVar, af afVar) {
        this.b = bhVar;
        this.a = afVar;
    }

    public void a(InputStream inputStream, int i) throws IOException {
        bh.a(this.b, this.a, inputStream, i);
    }

    public void a(Throwable th) {
        bh.a(this.b, this.a, th);
    }

    public void a() {
        bh.a(this.b, this.a);
    }
}
