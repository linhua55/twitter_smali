package com.facebook.imagepipeline.memory;

import com.facebook.common.memory.b;
import com.facebook.common.references.a;
import com.facebook.common.references.d;
import defpackage.bx;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class k {
    final m a;
    private final d<byte[]> b;

    public k(b bVar, y yVar) {
        bx.a(yVar.f > 0);
        this.a = new m(bVar, yVar, r.a());
        this.b = new l(this);
    }

    public a<byte[]> a(int i) {
        return a.a(this.a.a(i), this.b);
    }

    public void a(byte[] bArr) {
        this.a.a((Object) bArr);
    }
}
