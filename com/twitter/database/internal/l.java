package com.twitter.database.internal;

import com.twitter.database.model.c;
import com.twitter.database.model.p;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.Collection;
import rx.o;
import rx.subjects.e;
import rx.subjects.k;

/* compiled from: Twttr */
public abstract class l extends d implements p {
    private final k<c, c> b;
    private Collection<p> c;

    protected abstract Collection<Class<? extends p>> c();

    protected l(f fVar) {
        super(fVar);
        this.b = e.q();
    }

    public Collection<p> i() {
        if (this.c == null) {
            Collection<Class> c = c();
            if (c.isEmpty()) {
                this.c = n.g();
            } else {
                n e = n.e();
                for (Class cls : c) {
                    if (this.e_.d(cls)) {
                        e.c(this.e_.a(cls));
                    }
                }
                this.c = (Collection) e.q();
            }
        }
        return this.c;
    }

    o<c> j() {
        return this.b;
    }

    void k() {
        this.b.b_(c.a);
    }

    void l() {
        e eVar = (e) ObjectUtils.a(this.e_.g());
        try {
            a(eVar);
        } finally {
            eVar.close();
        }
    }

    private void a(e eVar) {
        if (eVar.a(this)) {
            for (p a : i()) {
                ((l) ObjectUtils.a(a)).a(eVar);
            }
        }
    }
}
