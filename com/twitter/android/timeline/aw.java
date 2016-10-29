package com.twitter.android.timeline;

import cgu;
import com.twitter.model.timeline.aj;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public abstract class aw {
    private final ar a;
    public final long n;
    public final aj o;

    protected aw(ar arVar, long j, aj ajVar) {
        this.a = arVar;
        this.n = j;
        this.o = ajVar;
    }

    protected cgu<? extends aw> aV_() {
        return be.b();
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        Iterator it = aV_().iterator();
        while (it.hasNext()) {
            ((aw) it.next()).a(list, list2, list3);
        }
    }

    public final ar c() {
        if (this.a != null) {
            return this.a;
        }
        throw new IllegalStateException("getEntityInfo should only be called for rich timeline");
    }

    public final long d() {
        return this.a == null ? -1 : this.a.a;
    }
}
