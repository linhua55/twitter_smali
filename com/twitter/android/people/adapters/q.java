package com.twitter.android.people.adapters;

import com.twitter.model.people.aa;
import com.twitter.model.people.g;
import com.twitter.model.people.l;
import ctc;

/* compiled from: Twttr */
public class q extends m<aa> {
    public final l c;
    public final String d;

    public q(g gVar, Iterable<aa> iterable, l lVar, String str) {
        super(gVar, iterable);
        this.c = lVar;
        this.d = str;
    }

    protected ctc<aa, String> a() {
        return new r(this);
    }
}
