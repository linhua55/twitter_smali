package com.twitter.android;

import com.twitter.library.client.Session;
import com.twitter.model.av.n;
import defpackage.um;
import rx.o;

/* compiled from: Twttr */
public abstract class an<T> {
    protected final um a;
    protected n b;
    protected o<ap> c;

    protected abstract o<n> b(Session session, T t);

    protected an(um umVar) {
        this.a = umVar;
    }

    public o<ap> a(Session session, T t) {
        if (this.b != null) {
            return o.b(new ap(this.b, true));
        }
        if (this.c != null) {
            return this.c;
        }
        o b = b(session, t);
        if (b != null) {
            this.c = b.g(new ao(this));
        } else {
            this.c = o.b(new ap(null, true));
        }
        return this.c;
    }

    public n a() {
        return this.b;
    }

    public void a(n nVar) {
        this.b = nVar;
    }
}
