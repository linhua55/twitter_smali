package com.twitter.android.people.adapters;

import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import ctc;
import java.util.Map;

/* compiled from: Twttr */
final class ae implements ctc<am, Iterable<i>> {
    final /* synthetic */ Map a;
    final /* synthetic */ g b;

    ae(Map map, g gVar) {
        this.a = map;
        this.b = gVar;
    }

    public Iterable<i> a(am amVar) {
        e.a(amVar);
        Iterable iterable = (Iterable) this.a.get(amVar);
        return n.a(new v(this.b, amVar, 1, false), new i[]{new w(this.b, ab.b(iterable))});
    }
}
