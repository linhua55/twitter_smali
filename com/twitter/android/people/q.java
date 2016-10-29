package com.twitter.android.people;

import akj;
import cby;
import com.twitter.android.people.adapters.ag;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.j;
import cvq;
import java.io.Closeable;
import java.io.IOException;
import rx.o;
import rx.subjects.c;

/* compiled from: Twttr */
public class q implements Closeable {
    private final akj a;
    private final c<Void> b;
    private final cby c;
    private final ag d;

    public q(cby cby, akj akj, ag agVar) {
        this.a = akj;
        this.c = cby;
        this.d = agVar;
        this.b = c.e((Void) null);
    }

    public boolean a() {
        return this.a.a();
    }

    public o<Iterable<i>> b() {
        return o.a(this.a.b().g(new r(this)), this.b, cvq.a()).g(new s(this));
    }

    public void c() {
        this.b.b_(null);
    }

    private i a(i iVar) {
        if ((iVar instanceof j) && this.c.b()) {
            return ((j) iVar).a();
        }
        return iVar;
    }

    public void close() throws IOException {
        this.a.close();
    }
}
