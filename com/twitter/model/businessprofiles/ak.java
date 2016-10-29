package com.twitter.model.businessprofiles;

import android.support.annotation.VisibleForTesting;
import com.twitter.util.collection.n;
import java.util.Date;
import java.util.List;

/* compiled from: Twttr */
public class ak {
    @VisibleForTesting
    protected final List<an> a;
    @VisibleForTesting
    protected final an b;
    @VisibleForTesting
    protected List<an> c;
    @VisibleForTesting
    protected an d;
    @VisibleForTesting
    protected an e;
    @VisibleForTesting
    protected an f;

    public ak(Date date, List<an> list) {
        this.d = null;
        this.e = null;
        this.f = null;
        this.b = an.a(date);
        this.a = list;
        if (this.a == null) {
            this.c = null;
            return;
        }
        n a = n.a(list.size());
        for (an anVar : list) {
            int c = anVar.c(date);
            if (c == 0) {
                this.e = anVar;
            } else if (c < 0) {
                this.d = anVar;
            } else {
                a.c(anVar);
                if (this.f == null) {
                    this.f = anVar;
                }
            }
        }
        this.c = (List) a.q();
    }

    public an a() {
        if (c()) {
            return this.b;
        }
        if (f()) {
            if (b(this.e)) {
                return this.e;
            }
            if (c(this.e)) {
                return new an(this.b.b, this.e.c);
            }
            return this.b;
        } else if (g() && b(this.f)) {
            if (c(this.f)) {
                return this.f;
            }
            return new an(this.f.b, this.b.c);
        } else if (e() && a(this.d)) {
            return this.d;
        } else {
            return null;
        }
    }

    public an b() {
        if (g()) {
            return an.a(this.c);
        }
        return null;
    }

    public boolean c() {
        return this.a == null;
    }

    public boolean d() {
        return c() || (f() && this.e.a(this.b));
    }

    private boolean e() {
        return this.d != null;
    }

    private boolean f() {
        return c() || this.e != null;
    }

    private boolean g() {
        return this.f != null;
    }

    private boolean a(an anVar) {
        return b(anVar) && c(anVar);
    }

    private boolean b(an anVar) {
        return this.b.b(anVar.b);
    }

    private boolean c(an anVar) {
        return this.b.b(anVar.c);
    }
}
