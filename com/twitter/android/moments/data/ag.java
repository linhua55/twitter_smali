package com.twitter.android.moments.data;

import cgu;
import com.twitter.library.provider.bw;
import com.twitter.library.provider.ck;
import com.twitter.model.moments.ab;
import defpackage.aow;
import defpackage.aoy;
import defpackage.axw;
import java.io.Closeable;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
public class ag implements Closeable {
    private final long a;
    private final d<aow, cgu<ab>> b;
    private final u c;

    public ag(long j, d<aow, cgu<ab>> dVar, u uVar) {
        this.a = j;
        this.b = dVar;
        this.c = uVar;
    }

    public void a(long j) {
        this.c.a(j);
    }

    public void b(long j) {
        this.c.b(j);
    }

    public o<ab> c(long j) {
        return this.b.a().a_(new aoy().a(ck.a(bw.a(j), this.a)).a(axw.a).a()).g(new ah(this));
    }

    public void close() throws IOException {
        this.b.close();
    }
}
