package com.twitter.library.api;

import cnm;
import com.twitter.model.timeline.ag;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bk;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

/* compiled from: Twttr */
public class ai {
    public final List<av> a;
    public final ag b;
    public final List<cnm> c;
    public final bk d;
    public boolean e;
    private aj f;

    public ai(ag agVar) {
        this.a = agVar.a;
        this.b = agVar.c;
        this.c = ImmutableList.a(agVar.b);
        this.d = agVar.f;
        this.e = agVar.h;
    }

    public long a() {
        if (this.a.isEmpty()) {
            return -1;
        }
        return ((av) this.a.get(0)).e;
    }

    public aj b() {
        return this.f;
    }

    public void a(aj ajVar) {
        this.f = ajVar;
    }
}
