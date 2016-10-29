package com.twitter.model.media.foundmedia;

import android.util.SparseArray;
import com.twitter.util.object.e;
import com.twitter.util.serialization.a;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
public class f {
    public static final n<f> a;
    public final FoundMediaProvider b;
    public final String c;
    public final String d;
    public final FoundMediaOrigin e;
    public final String f;
    public final SparseArray<FoundMediaImageVariant> g;
    public final FoundMediaImageVariant h;

    static {
        a = new h(null);
    }

    public f(FoundMediaProvider foundMediaProvider, String str, String str2, FoundMediaOrigin foundMediaOrigin, String str3, SparseArray<FoundMediaImageVariant> sparseArray, FoundMediaImageVariant foundMediaImageVariant) {
        this.b = foundMediaProvider;
        this.c = str;
        this.d = str2;
        this.e = foundMediaOrigin;
        this.f = str3;
        this.g = sparseArray;
        this.h = foundMediaImageVariant;
    }

    f(p pVar) throws IOException, ClassNotFoundException {
        this.b = (FoundMediaProvider) e.a(FoundMediaProvider.a.a(pVar));
        this.c = pVar.p();
        this.d = pVar.p();
        this.e = (FoundMediaOrigin) e.a(FoundMediaOrigin.a.a(pVar));
        this.f = pVar.p();
        this.g = (SparseArray) e.a(a.a(pVar, FoundMediaImageVariant.a));
        this.h = (FoundMediaImageVariant) e.a(FoundMediaImageVariant.a.a(pVar));
    }

    void a(q qVar) throws IOException {
        FoundMediaProvider.a.b(qVar, this.b);
        qVar.b(this.c);
        qVar.b(this.d);
        FoundMediaOrigin.a.b(qVar, this.e);
        qVar.b(this.f);
        a.a(qVar, this.g, FoundMediaImageVariant.a);
        FoundMediaImageVariant.a.b(qVar, this.h);
    }
}
