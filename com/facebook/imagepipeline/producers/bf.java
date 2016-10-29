package com.facebook.imagepipeline.producers;

import android.util.Pair;
import java.util.List;

/* compiled from: Twttr */
class bf extends g {
    final /* synthetic */ Pair a;
    final /* synthetic */ be b;

    bf(be beVar, Pair pair) {
        this.b = beVar;
        this.a = pair;
    }

    public void a() {
        List list;
        List list2;
        f fVar;
        List list3 = null;
        synchronized (this.b) {
            boolean remove = be.b(this.b).remove(this.a);
            if (!remove) {
                list = null;
                list2 = null;
                fVar = null;
            } else if (be.b(this.b).isEmpty()) {
                list2 = null;
                fVar = be.c(this.b);
                list = null;
            } else {
                List d = be.d(this.b);
                list2 = be.e(this.b);
                list = list2;
                list2 = d;
                fVar = null;
                list3 = be.f(this.b);
            }
        }
        f.b(list2);
        f.d(list);
        f.c(list3);
        if (fVar != null) {
            fVar.i();
        }
        if (remove) {
            ((o) this.a.first).b();
        }
    }

    public void b() {
        f.b(be.d(this.b));
    }

    public void c() {
        f.c(be.f(this.b));
    }

    public void d() {
        f.d(be.e(this.b));
    }
}
