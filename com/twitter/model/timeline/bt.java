package com.twitter.model.timeline;

import cni;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class bt extends av implements ax, az {
    public final List<bw> a;
    public final w o;
    public final p p;

    private bt(bv bvVar, int i) {
        super(bvVar, i);
        if (this.k != 0) {
            a(bvVar.a);
        }
        n a = n.a(bvVar.a.size());
        for (by b : bvVar.a) {
            a.c(((by) b.b(this.b)).q());
        }
        this.a = (List) a.q();
        this.o = bvVar.l;
        this.p = bvVar.m;
    }

    public List<cm> c() {
        n a = n.a(this.a.size());
        for (bw bwVar : this.a) {
            a.c(bwVar.a);
        }
        return (List) a.q();
    }

    public cni d() {
        for (bw bwVar : this.a) {
            cm cmVar = bwVar.a;
            if (cmVar.f()) {
                return cmVar.w;
            }
        }
        return null;
    }
}
