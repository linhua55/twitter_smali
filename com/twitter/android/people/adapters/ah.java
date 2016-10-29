package com.twitter.android.people.adapters;

import com.twitter.android.people.az;
import com.twitter.model.people.g;
import com.twitter.util.object.e;
import ctc;

/* compiled from: Twttr */
class ah implements ctc<g, Iterable<i>> {
    final /* synthetic */ ag a;

    ah(ag agVar) {
        this.a = agVar;
    }

    public Iterable<i> a(g gVar) {
        String str = ((g) e.a(gVar)).c().b;
        if (!az.a(str)) {
            return null;
        }
        ai aiVar = (ai) ag.a.get(str);
        if (aiVar != null) {
            return aiVar.a(gVar);
        }
        return null;
    }
}
