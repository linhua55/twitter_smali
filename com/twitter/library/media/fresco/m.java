package com.twitter.library.media.fresco;

import com.facebook.imagepipeline.producers.bk;
import com.twitter.internal.network.i;
import com.twitter.internal.network.k;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
class m implements i {
    final /* synthetic */ bk a;
    final /* synthetic */ l b;

    m(l lVar, bk bkVar) {
        this.b = lVar;
        this.a = bkVar;
    }

    public void a(int i, InputStream inputStream, int i2, String str, String str2) throws IOException {
        this.a.a(inputStream, i2);
    }

    public void a(k kVar) {
        this.a.a(kVar.c);
    }
}
