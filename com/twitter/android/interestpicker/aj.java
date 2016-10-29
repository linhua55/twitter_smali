package com.twitter.android.interestpicker;

import cgu;
import com.twitter.util.collection.n;
import cto;
import cvq;
import defpackage.cgz;
import defpackage.chd;
import defpackage.cjh;
import java.util.List;
import rx.o;
import rx.subjects.ReplaySubject;
import rx.subjects.c;
import rx.subjects.e;
import rx.subjects.k;

/* compiled from: Twttr */
public class aj {
    private final d a;
    private final k<h, h> b;
    private final k<h, h> c;
    private final k<Void, Void> d;
    private boolean e;

    public aj(d dVar) {
        this.a = dVar;
        this.b = ReplaySubject.q().r();
        this.d = c.e((Void) null).r();
        this.c = e.q().r();
    }

    public void a(h hVar) {
        if (hVar.c == -1) {
            this.b.b_(hVar);
        } else {
            this.c.b_(hVar);
        }
    }

    public void a() {
        this.d.b_(null);
    }

    public o<cgu<h>> b() {
        return o.a(this.b.b(f.b()).b(chd.f(), cgz.b()).d(chd.f()).g(), o.a(o.a(this.a.a_(null).g(new ak(this)).d(chd.f()), this.c.b(f.b()).b(chd.f(), cgz.b()).d(chd.f()), new al(this)), this.d, cvq.a()).g(new am(this)), cgz.a());
    }

    protected static List<h> a(Iterable<h> iterable) {
        n d = n.d();
        for (h hVar : iterable) {
            d.c(hVar);
            if ((hVar instanceof ba) && ((ba) hVar).e) {
                Iterable a = a(hVar.d);
                if (!a.isEmpty()) {
                    ((ba) hVar).f = a(hVar.d);
                    d.c(new av(hVar.b));
                    d.c(a);
                    d.c(new au(hVar.b));
                }
            } else if ((hVar instanceof aw) && ((aw) hVar).h) {
                d.c(a(hVar.d));
            }
        }
        return (List) d.q();
    }

    private static int a(List<h> list) {
        return cto.b(cto.a(list, new an()));
    }

    protected List<h> b(Iterable<cjh> iterable) {
        return this.e ? c(iterable) : a(iterable, -1, false);
    }

    protected static List<h> c(Iterable<cjh> iterable) {
        n d = n.d();
        for (cjh cjh : iterable) {
            d.c(new ba(cjh.a, cjh.b, -1, false, a(cjh.d, cjh.b, true)));
        }
        List<h> list = (List) d.q();
        if (!list.isEmpty()) {
            ((ba) list.get(0)).b();
        }
        return list;
    }

    private static List<h> a(Iterable<cjh> iterable, long j, boolean z) {
        n d = n.d();
        for (cjh cjh : iterable) {
            String str = cjh.a;
            long j2 = cjh.b;
            String str2 = cjh.e;
            List a = a(cjh.d, cjh.b, z);
            boolean z2 = z || !cjh.d.isEmpty();
            d.c(new aw(str, j2, 1, false, false, j, str2, a, z2));
        }
        return (List) d.q();
    }

    public void a(boolean z) {
        this.e = z;
    }
}
