package com.twitter.library.client;

import com.twitter.library.view.w;
import com.twitter.library.widget.ak;
import com.twitter.util.al;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
public class br {
    private static final br a;
    private boolean b;
    private boolean c;
    private List<w> d;
    private long e;
    private long f;
    private WeakReference<bs> g;
    private WeakReference<ak> h;

    static {
        a = new br();
    }

    public static br a() {
        return a;
    }

    private br() {
        this.f = 30000;
        this.g = new WeakReference(null);
    }

    public boolean b() {
        return this.c && this.b;
    }

    public void a(boolean z) {
        this.b = z;
        bs bsVar = (bs) this.g.get();
        if (this.c && bsVar != null) {
            bsVar.a(z);
        }
    }

    public void a(bs bsVar) {
        this.g = new WeakReference(bsVar);
    }

    public void a(List<w> list) {
        if (list != null && list.size() > 0) {
            this.d = list;
            this.c = true;
        }
    }

    public long c() {
        if (this.e != 0) {
            return (al.b() - this.e) % this.f;
        }
        this.e = al.b();
        return 0;
    }

    public void a(long j) {
        if (j > 0) {
            this.f = j;
        }
    }

    public long d() {
        return this.f;
    }

    public List<w> e() {
        return this.d;
    }

    public void a(ak akVar) {
        if (akVar == null) {
            this.h = null;
        } else {
            this.h = new WeakReference(akVar);
        }
    }

    public ak f() {
        if (this.h != null) {
            return (ak) this.h.get();
        }
        return null;
    }
}
