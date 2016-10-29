package com.google.gson.internal;

import com.google.gson.d;
import com.google.gson.s;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import qz;

/* compiled from: Twttr */
class p extends s<T> {
    final /* synthetic */ boolean a;
    final /* synthetic */ boolean b;
    final /* synthetic */ d c;
    final /* synthetic */ qz d;
    final /* synthetic */ o e;
    private s<T> f;

    p(o oVar, boolean z, boolean z2, d dVar, qz qzVar) {
        this.e = oVar;
        this.a = z;
        this.b = z2;
        this.c = dVar;
        this.d = qzVar;
    }

    public T read(a aVar) throws IOException {
        if (!this.a) {
            return a().read(aVar);
        }
        aVar.n();
        return null;
    }

    public void write(c cVar, T t) throws IOException {
        if (this.b) {
            cVar.f();
        } else {
            a().write(cVar, t);
        }
    }

    private s<T> a() {
        s<T> sVar = this.f;
        if (sVar != null) {
            return sVar;
        }
        sVar = this.c.a(this.e, this.d);
        this.f = sVar;
        return sVar;
    }
}
