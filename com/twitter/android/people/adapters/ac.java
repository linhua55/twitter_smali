package com.twitter.android.people.adapters;

import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.util.object.e;
import ctc;

/* compiled from: Twttr */
final class ac implements ctc<am, i> {
    final /* synthetic */ g a;
    final /* synthetic */ boolean b;

    ac(g gVar, boolean z) {
        this.a = gVar;
        this.b = z;
    }

    public i a(am amVar) {
        e.a(amVar);
        return new v(this.a, amVar, 0, this.b);
    }
}
