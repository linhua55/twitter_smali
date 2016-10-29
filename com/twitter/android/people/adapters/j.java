package com.twitter.android.people.adapters;

import com.twitter.model.people.aj;
import com.twitter.model.people.g;
import com.twitter.model.people.l;

/* compiled from: Twttr */
public class j extends l {
    public final boolean a;

    public j(g gVar, l lVar, aj ajVar, boolean z) {
        super(gVar, lVar, ajVar);
        this.a = z;
    }

    public j a() {
        return this.a ? this : new j(b(), this.b, this.c, true);
    }
}
