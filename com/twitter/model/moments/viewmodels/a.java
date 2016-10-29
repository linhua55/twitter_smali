package com.twitter.model.moments.viewmodels;

import cll;
import com.twitter.model.moments.ab;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class a implements j {
    private final ab a;
    private final List<MomentPage> b;
    private final MomentPage c;
    private final MomentPage d;
    private final List<MomentPage> e;
    private final cll f;

    private a(c cVar) {
        this.a = (ab) e.a(cVar.a);
        this.b = e.a(n.a(cVar.b));
        this.c = cVar.d;
        this.d = cVar.e;
        this.f = cVar.c;
        this.e = (List) n.d().c(this.c).c(this.b).c(this.d).q();
    }

    public ab a() {
        return this.a;
    }

    public cll c() {
        return this.f;
    }

    public List<MomentPage> d() {
        return this.e;
    }

    public MomentPage c(int i) {
        if (i < 0 || i >= this.e.size()) {
            return null;
        }
        return (MomentPage) this.e.get(i);
    }

    public int b() {
        return this.e.size();
    }

    private static List<i> a(List<MomentPage> list) {
        n d = n.d();
        int i = 0;
        n d2 = n.d();
        while (i < list.size()) {
            n nVar;
            MomentPage momentPage = (MomentPage) list.get(i);
            d2.c(momentPage);
            int i2 = i + 1;
            if (i2 < list.size()) {
                if (!a(momentPage, (MomentPage) list.get(i2))) {
                    d.c(new i((List) d2.q()));
                    d2 = n.d();
                }
                nVar = d2;
            } else {
                d.c(new i((List) d2.q()));
                nVar = d2;
            }
            i++;
            d2 = nVar;
        }
        return (List) d.q();
    }

    public List<i> e() {
        return a(d());
    }

    private static boolean a(MomentPage momentPage, MomentPage momentPage2) {
        return (momentPage instanceof o) && (momentPage2 instanceof o) && !momentPage.i() && !momentPage2.j() && ((o) momentPage).m() == ((o) momentPage2).m();
    }
}
